using System.Collections.Generic;
using System.Linq;
using System.Threading;
using DataRead.ShopDataModel;
using Mobiles.DataModels;
using Mobiles.gsmarena;
using NUnit.Framework.Constraints;

namespace DIDDataRead
{
    internal class Program
    {
        private static void Main(string[] args)
        {

            var gsmarena = new GsmarenaOnline();

            //var gsmarenaBrands = new Thread(gsmarena.PopulateBrands);
            //gsmarenaBrands.SetApartmentState(ApartmentState.STA);
            //gsmarenaBrands.Start();


            List<Mobiles.DataModels.Brand> brands;
            using (var dbContext = new MobilesDbContext())
            {
                brands = dbContext.Brands.ToList();
            }

            var threads = new List<Thread>();
            var maxId = brands.Max(b => b.Id);
            int idToRange = 0;
            while (idToRange <= maxId)
            {
                var idFromRange = idToRange;
                idToRange = idToRange + ((idToRange + 20) < maxId ? 20 : maxId - idToRange);
                var brandIds = from b in brands
                               where b.Id > idFromRange && b.Id < idToRange
                               select b.Id;

                var thread = new Thread(() => gsmarena.PopulateBrandPages(brandIds));
                thread.SetApartmentState(ApartmentState.STA);
                threads.Add(thread);

                if (idToRange == maxId)
                {
                    break;
                }
            }

            threads.ForEach(t => t.Start());



            //var gsmarenaBrandPages = new Thread(gsmarena.PopulateBrandPages);
            //gsmarenaBrandPages.SetApartmentState(ApartmentState.STA);
            //gsmarenaBrandPages.Start();


            //var gsmarenaBrandPagePhones = new Thread(gsmarena.PopulateBrandMobilePhones);
            //gsmarenaBrandPagePhones.SetApartmentState(ApartmentState.STA);
            //gsmarenaBrandPagePhones.Start();

            //var gsmarenaProductSpecificationsOdd = new Thread(() => gsmarena.PopulateMobileSpecifications(false));
            //gsmarenaProductSpecificationsOdd.SetApartmentState(ApartmentState.STA);
            //gsmarenaProductSpecificationsOdd.Start();

            //var gsmarenaProductSpecificationsEven = new Thread(() => gsmarena.PopulateMobileSpecifications(true));
            //gsmarenaProductSpecificationsEven.SetApartmentState(ApartmentState.STA);
            //gsmarenaProductSpecificationsEven.Start();




            //var brandImages = new Thread(() => gsmarena.DownloadMobileThumbImages());
            //brandImages.SetApartmentState(ApartmentState.STA);
            //brandImages.Start();

            var mobileImages = new Thread(gsmarena.PopulateMobileImages);
            mobileImages.SetApartmentState(ApartmentState.STA);
            mobileImages.Start();

            //var gsmarenaProductSpecifications = new Thread(gsmarena.PopulateUrls);
            //gsmarenaProductSpecifications.SetApartmentState(ApartmentState.STA);
            //gsmarenaProductSpecifications.Start();


            //while (gsmarenaBrands.IsAlive)
            //{
            //    if (gsmarenaBrands.IsAlive==false)
            //    {
            //        gsmarenaBrandPages.Start();
            //        break;
            //    }
            //}


          
            //while (gsmarenaBrandPages.IsAlive)
            //{
            //    if (gsmarenaBrandPages.IsAlive == false)
            //    {
            //        gsmarenaBrandPagePhones.Start();
            //        break;
            //    }
            //}

           

        }
    }
}