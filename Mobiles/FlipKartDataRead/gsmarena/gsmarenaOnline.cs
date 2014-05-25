using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mime;
using System.Reflection;
using System.Threading;
using DataRead.ShopDataModel;
using Mobiles.DataModels;
using Mobiles.OnlineShopModel;
using WatiN.Core;
using WatiN.Core.Native.Windows;
using Brand = Mobiles.OnlineShopModel.Brand;
using Product = Mobiles.DataModels.Product;

namespace Mobiles.gsmarena
{
    public class GsmarenaOnline : OnlineShop
    {
        #region "Method to Populate Categories And Brands"

        public void PopulateBrands()
        {
             Url = "http://www.gsmarena.com/makers.php3";
            using (var browser = new IE(Url,true))
            {
                try
                {
                    Settings.AttachToBrowserTimeOut = 240;
                    Settings.WaitUntilExistsTimeOut = 240;
                    Settings.WaitForCompleteTimeOut = 240;

                    Thread.Sleep(1000);

                    var shop = new OnlineShoppingModel();

                    Div allBrandsDiv = browser.Div(Find.ById("mid-col"));
                    Table allBrandTable = allBrandsDiv.Tables.First();

                    int index = 1;
                    foreach (TableRow brandRow in allBrandTable.TableRows)
                    {
                        IEnumerable<Link> brandLinks = brandRow.Links.Where(l => l.Images.Count > 0);

                        if (brandLinks.Count() > 0)
                        {
                            foreach (Link brandLink in brandLinks)
                            {
                                Image brandImage = brandLink.Images.First();
                                Link textBrandlink =
                                    brandRow.Links.Where(b => b.Url.Contains(brandLink.Url) && b.Images.Count <= 0).
                                        First();
                                string brandText = textBrandlink.Text;

                                string numberOfProducts =
                                    brandText.Substring(brandText.IndexOf("(")).Replace("(", "").Replace(")", "");


                                var brand = new Brand
                                                {
                                                    Id = index,
                                                    Name = brandImage.Alt,
                                                    Url = brandLink.Url,
                                                    NoOfProducts = int.Parse(numberOfProducts),
                                                    ImageUrl = brandImage.Src
                                                };

                                shop.Brands.Add(brand);
                                index++;
                            }
                        }

                        Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());

                        using (var dbContext = new MobilesDbContext())
                        {
                            List<string> brandUrlList = dbContext.Brands.Select(c => c.Url).ToList();
                            foreach (Brand brand in
                                shop.Brands.Where(c => brandUrlList.Contains(c.Url) == false))
                            {
                                dbContext.Brands.Add(new DataModels.Brand
                                                         {
                                                             BrandName = brand.Name,
                                                             IsActive = true,
                                                             AddedDate = DateTime.Now,
                                                             LastModifiedDate = DateTime.Now,
                                                             Url = brand.Url,
                                                             NumberOfProducts = brand.NoOfProducts,
                                                             ImageUrl = brand.ImageUrl
                                                         });
                            }

                            dbContext.SaveChanges();
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                    Console.ReadLine();
                    //throw ex;
                }
            }
        }

        public void PopulateBrandPages()
        {
            Settings.AttachToBrowserTimeOut = 240;
            Settings.WaitUntilExistsTimeOut = 240;
            Settings.WaitForCompleteTimeOut = 240;
            using (var dbContext = new MobilesDbContext())
            {
                try
                {
                    List<string> brandPagesList = dbContext.BrandPages.Select(b => b.Url).Distinct().ToList();
                    List<DataModels.Brand> brands = dbContext.Brands.ToList();
                    foreach (DataModels.Brand brand in brands)
                    {
                        KillIeProcesses();
                        if (brandPagesList.Contains(brand.Url).Equals(false))
                        {
                            brand.BrandPages.Add(new BrandPage
                                                     {
                                                         Url = brand.Url,
                                                         IsInitialPage = true
                                                     });
                        }

                        string url = brand.Url;
                        using (var browser = new IE(url,true))
                        {
                            browser.ShowWindow(NativeMethods.WindowShowStyle.ForceMinimized);
                            browser.WaitForComplete();

                            Div mainDiv = browser.Div(Find.ById("main"));
                            if (mainDiv.Exists)
                            {
                                Div navigationDiv =
                                    mainDiv.Divs.Where(d => d.ClassName != null && d.ClassName.Contains("nav-pages")).
                                        FirstOrDefault();
                                if (navigationDiv != null && navigationDiv.Exists)
                                {
                                    List<string> pageLinks =
                                        navigationDiv.Links.Select(l=>l.Url).Distinct().ToList();
                                    
                                    foreach (var pageLink in pageLinks)
                                    {
                                        if (brandPagesList.Contains(pageLink).Equals(false))
                                        {
                                            brand.BrandPages.Add(new BrandPage
                                            {
                                                Url = pageLink
                                            });
                                        }
                                    }
                                }
                            }
                        }

                        dbContext.SaveChanges();
                    }

                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                    Console.ReadLine();
                    //throw ex;
                }
            }
        }
        
        private void KillIeProcesses()
        {
            foreach (var process in Process.GetProcesses())
            {
                if (process.ProcessName.StartsWith("iexplore"))
                {
                    try
                    {
                        process.Kill();
                    }
                    catch (Exception)
                    {

                    }
                }
            }
        }

        #endregion

        #region PopulateProductsOfBrands

        public void PopulateBrandMobilePhones()
        {
            Settings.AttachToBrowserTimeOut = 240;
            Settings.WaitUntilExistsTimeOut = 240;
            Settings.WaitForCompleteTimeOut = 240;
            using (var dbContext = new MobilesDbContext())
            {
                try
                {
                    List<BrandPage> brandPages =
                        dbContext.BrandPages.Include("Brand").Where(p => p.IsRead == false).ToList();
                    foreach (BrandPage brandPage in brandPages)
                    {
                        KillIeProcesses();
                        string url = brandPage.Url;
                        using (var browser = new IE(url,true))
                        {
                            browser.ShowWindow(NativeMethods.WindowShowStyle.ForceMinimized);
                            browser.WaitForComplete();

                            IEnumerable<Div> productsDivs =
                                browser.Divs.Where(d => d.ClassName != null && d.ClassName.Contains("makers"));

                            var listOfProducts = new List<OnlineShopModel.Product>();
                            foreach (Div productDiv in productsDivs)
                            {
                                List productsList = productDiv.Lists.First();

                                if (productsList != null && productsList.Exists)
                                {
                                    foreach (ListItem productListItem in productsList.ListItems)
                                    {
                                        Link productLink = productListItem.Links.First();
                                        Element productName =
                                            productLink.Children().Where(c => c.TagName.ToUpper() == "STRONG").First();
                                        Image productImage = productLink.Images.First();
                                        listOfProducts.Add(new OnlineShopModel.Product
                                                               {
                                                                   ProductName = productName.Text,
                                                                   Url = productLink.Url,
                                                                   ImageUrl = productImage.Src,
                                                                   Description = productImage.Title
                                                               });
                                    }
                                }
                            }

                            Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());

                            List<Product> dbProductsList = dbContext.Products.ToList();

                            foreach (OnlineShopModel.Product product in listOfProducts)
                            {
                                Product filterProduct = dbProductsList.Where(p => p.Url == product.Url).FirstOrDefault();
                                if (filterProduct == null)
                                {
                                    Product dbProduct = GetDbProduct(product);
                                    dbProduct.Brand = brandPage.Brand;
                                    dbContext.Products.Add(dbProduct);
                                }
                            }

                            brandPage.IsRead = true;

                            dbContext.SaveChanges();
                        }
                    }
                }

                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                    Console.ReadLine();
                    //throw ex;
                }
            }
        }

        public Product GetDbProduct(OnlineShopModel.Product product)
        {
            var dbProduct = new Product
                                {
                                    ProductName = product.ProductName,
                                    AddedDate = DateTime.Now,
                                    LastModifiedDate = DateTime.Now,
                                    IsActive = true,
                                    Url = product.Url,
                                    ImageUrl = product.ImageUrl,
                                    Description = product.Description
                                };
            return dbProduct;
        }

        #endregion


        public void PopulateMobileSpecifications(bool evenId)
        {
            Settings.AttachToBrowserTimeOut = 240;
            Settings.WaitUntilExistsTimeOut = 240;
            Settings.WaitForCompleteTimeOut = 240;
            Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());

            using (var dbContext = new MobilesDbContext())
            {
                try
                {
                    List<Product> dbProducts = dbContext.Products.Where(p => p.IsRead == false && ((p.Id%2)==0)==evenId).ToList();
                    foreach (var dbProduct in dbProducts)
                    {
                       // KillIeProcesses();
                        string url = dbProduct.Url;

                        using (var browser = new IE(url, true))
                        {
                            //browser.ShowWindow(NativeMethods.WindowShowStyle.ForceMinimized);
                            //browser.WaitForComplete();

                            Div specificationsDiv = browser.Div(Find.ById("specs-list"));
                            var productDetails = new ProductDetails();

                            foreach (Table table in specificationsDiv.Tables)
                            {
                                var specification = new Specification();
                                Element specificationTypeCell =
                                    table.TableRows.First().Children().Where(c => c.TagName.ToUpper() == "TH").First();
                                if (specificationTypeCell != null && specificationTypeCell.Exists)
                                {
                                    specification.Type = specificationTypeCell.Text;
                                }

                                foreach (TableRow tableRow in table.TableRows)
                                {
                                    if (tableRow.TableCells.Count > 1)
                                    {
                                        TableCell keyCell = tableRow.TableCells.FirstOrDefault();
                                        TableCell valueCell = tableRow.TableCells.LastOrDefault();

                                        if (keyCell != null && keyCell.Exists && valueCell != null && valueCell.Exists)
                                        {
                                            if (keyCell.Links.Count > 0)
                                            {
                                                var specDetail = new SpecificationDetail();
                                                specDetail.Key = keyCell.Links.First().Text;
                                                specDetail.Value = valueCell.Text;
                                                specification.Details.Add(specDetail);
                                            }
                                            else if (specification.Details.Count > 0)
                                            {
                                                specification.Details.Last().Value = string.Format("{0}{1}",
                                                                                                   specification.Details
                                                                                                       .Last().
                                                                                                       Value,
                                                                                                   valueCell.Text);
                                            }
                                        }
                                    }
                                }

                                productDetails.Specifications.Add(specification);
                                dbProduct.IsRead = true;
                            }

                            GenerateProductDetails(dbProduct,productDetails, dbContext);
                            dbContext.SaveChanges();
                            
                        }
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex.ToString());
                    Console.ReadLine();
                    //throw ex;
                }
            }
        }

        
        public Product GenerateProductDetails(Product product, ProductDetails specdetails, MobilesDbContext dbContext)
        {
            int index = 1;
            List<SpecifictionType> specTypeList = dbContext.SpecifictionTypes.ToList();
            List<SpecifictionHeading> specHeadingList = dbContext.SpecifictionHeadings.ToList();
            
            foreach (Specification specification in specdetails.Specifications)
            {
                SpecifictionType specType = specTypeList.Where(s => s.Name == specification.Type).FirstOrDefault();
                if (specType == null)
                {
                    specType = new SpecifictionType {Name = specification.Type};
                    dbContext.SpecifictionTypes.Add(specType);
                }


                var dbSpecifiction = new Specifiction { Type = specType, Product = product };

                foreach (SpecificationDetail specDetail in specification.Details)
                {
                    SpecifictionHeading specHeading =
                        specHeadingList.Where(s => s.Name == specDetail.Key).FirstOrDefault();
                    if (specHeading == null)
                    {
                        specHeading = new SpecifictionHeading {Name = specDetail.Key};
                        dbContext.SpecifictionHeadings.Add(specHeading);
                    }

                    var dbSpecDetail = new SpecificatonDetail
                                           {
                                               Heading = specHeading,
                                               Specifiction = dbSpecifiction,
                                               Value = specDetail.Value
                                           };
                    dbSpecifiction.SpecificatonDetails.Add(dbSpecDetail);
                }
                product.Specifictions.Add(dbSpecifiction);
            }
            return product;
        }



        public void DownloadBrandImages()
        {
            Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());
            var dbContext = new MobilesDbContext();
            var brandImages = dbContext.Brands.Select(b => b.ImageUrl).ToList();
            var folderPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\BrandImages\";

            foreach(string imageUrl in brandImages)
            {
                var fileName = Path.GetFileName(imageUrl);

                var request = (HttpWebRequest)WebRequest.Create(imageUrl);
                WebResponse response = request.GetResponse();
                using (Stream stream = response.GetResponseStream())
                using (FileStream fs = File.OpenWrite(folderPath + fileName.Replace("lg_","")))
                {
                    byte[] bytes = new byte[1024];
                    int count;
                    while ((count = stream.Read(bytes, 0, bytes.Length)) != 0)
                    {
                        fs.Write(bytes, 0, count);
                    }
                }
            }
        }

        public void DownloadMobileThumbImages()
        {
            Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());
            var dbContext = new MobilesDbContext();
            var brandImages = dbContext.Products.Select(b => b.ImageUrl).ToList();
            var folderPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\MobileThumbImages\";

            foreach (string imageUrl in brandImages)
            {
                var fileName = Path.GetFileName(imageUrl);

                var request = (HttpWebRequest)WebRequest.Create(imageUrl);
                WebResponse response = request.GetResponse();
                using (Stream stream = response.GetResponseStream())
                using (FileStream fs = File.OpenWrite(folderPath + fileName.Replace("lg_", "")))
                {
                    byte[] bytes = new byte[1024];
                    int count;
                    while ((count = stream.Read(bytes, 0, bytes.Length)) != 0)
                    {
                        fs.Write(bytes, 0, count);
                    }
                }
            }
        }

        public void PopulateMobileImages()
        {
             Settings.AttachToBrowserTimeOut = 240;
                    Settings.WaitUntilExistsTimeOut = 240;
                    Settings.WaitForCompleteTimeOut = 240;

            using (var dbContext = new MobilesDbContext())
            {
                var products = dbContext.Products.Include("Brand").ToList();
                var productImageUrls = dbContext.ProductImages.Select(p=>p.ImageUrl).ToList()   ;

                foreach(var product  in products)
                {
                    var productUrl = product.Url;
                    var productName = product.ProductName;
                    var brandName = product.Brand.BrandName;

                    var replaceString = brandName.Replace(" ", "_")+"_"+ productName.Replace(" ", "_");
                    var picutreUrl = productUrl.Replace(replaceString.ToLower(), replaceString.ToLower() + "-pictures");

                    KillIeProcesses();

                    using (var browser = new IE(picutreUrl, true))
                    {

                        Div pictureDiv = browser.Div(Find.ById("pictures"));
                        var imageUrls = pictureDiv.Images.Select(i => i.Src);

                        foreach(var imageUrl in imageUrls )
                        {
                            if(productImageUrls.Contains(imageUrl)==false)
                            {

                                dbContext.ProductImages.Add(
                                    new ProductImage()
                                        {
                                            ImageUrl = imageUrl,
                                            Product = product
                                        }
                                    );
                            }
                        }
                    }

                    dbContext.SaveChanges();
                }
            }
        }



        public void DownloadMobileImages()
        {
            Database.SetInitializer(new CreateDatabaseIfNotExists<MobilesDbContext>());
            var dbContext = new MobilesDbContext();
            var brandImages = dbContext.ProductImages.Select(b => b.ImageUrl).ToList();
            var folderPath = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + @"\MobileImages\";

            foreach (string imageUrl in brandImages)
            {
                var fileName = Path.GetFileName(imageUrl);

                var request = (HttpWebRequest)WebRequest.Create(imageUrl);
                WebResponse response = request.GetResponse();
                using (Stream stream = response.GetResponseStream())
                using (FileStream fs = File.OpenWrite(folderPath + fileName.Replace("lg_", "")))
                {
                    byte[] bytes = new byte[1024];
                    int count;
                    while ((count = stream.Read(bytes, 0, bytes.Length)) != 0)
                    {
                        fs.Write(bytes, 0, count);
                    }
                }
            }
        }


        public void PopulateUrls()
        {
            Settings.AttachToBrowserTimeOut = 240;
            Settings.WaitUntilExistsTimeOut = 240;
            Settings.WaitForCompleteTimeOut = 240;
            using (var browser = new IE("http://www.youtube.com/user/vahchef/videos",true))
            {
                Div mainDiv = browser.Div(Find.ById("video-page-content"));

               

                while (mainDiv.Buttons.Where(b => b.ClassName != null && b.ClassName.Contains("load-more-button")).FirstOrDefault() != null)
                {
                     Button loadMore = mainDiv.Buttons.Where(b => b.ClassName!=null && b.ClassName.Contains("load-more-button")).FirstOrDefault();

                     if (loadMore != null && loadMore.Exists && loadMore.Enabled)
                         loadMore.ClickNoWait();

                     var links1 = mainDiv.Links.ToList().Select(l => l.Url).Distinct();

                     if (links1.Count() > 1000)
                     {
                         foreach (var link in links1)
                         {
                             Console.WriteLine(link);
                         }
                         break;
                     }
                        

                         //mainDiv = browser.Div(Find.ById("video-page-content"));

                         //loadMore = mainDiv.Buttons.Where(b => b.ClassName != null && b.ClassName.Contains("load-more-button")).FirstOrDefault();

                }

                //var links = mainDiv.Links.ToList().Select(l => l.Url).Distinct();

                //foreach(var link in links)
                //{
                //    Console.WriteLine(link);
                //}
                Console.ReadLine();
            }

        }


    }
}