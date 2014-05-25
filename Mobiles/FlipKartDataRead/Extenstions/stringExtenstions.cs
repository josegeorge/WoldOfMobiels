using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Xml;

namespace Mobiles.Extenstions
{
    public static class StringExtenstions
    {
        public static string GetAttributeValue(this string xmlString,string attributeName)
        {
            var result = string.Empty;
            var xmlDoc = new XmlDocument();
            xmlDoc.LoadXml(xmlString);
            if (xmlDoc.DocumentElement != null) result = xmlDoc.DocumentElement.Attributes[attributeName].Value;

            return result;

        }

        public static decimal ToDecimalPrice(this string price)
        {
            decimal result = 0;
            decimal.TryParse(price.Replace("Rs.", ""),out result);
            return result;
        }

    }
}
