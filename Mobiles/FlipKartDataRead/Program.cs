using System.Threading;
using Mobiles.gsmarena;

namespace DIDDataRead
{
    internal class Program
    {
        private static void Main(string[] args)
        {

            var gsmarena = new GsmarenaOnline();

            var gsmarenaBrands = new Thread(gsmarena.PopulateBrands);
            gsmarenaBrands.SetApartmentState(ApartmentState.STA);
            gsmarenaBrands.Start();

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