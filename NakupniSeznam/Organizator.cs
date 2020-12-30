using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Linq;
using System.Security.Cryptography.Xml;
using System.Text;
using System.Xml.Serialization;

namespace NakupniSeznam
{
    public class Organizator 
    {
        private string cesta = "polozky.xml";      
        public ObservableCollection<string> Polozky { get; set; }

        public Organizator()
        {
            Polozky = new ObservableCollection<string>();
        }        
        public void Pridej(string polozka)
        {
            if (!string.IsNullOrWhiteSpace(polozka))
            Polozky.Add(polozka);
        }        
        public void Odeber(string polozka)
        {
            Polozky.Remove(polozka);
        }
        public void Nacti()
        {            
            if (File.Exists(cesta))
            {
                XmlSerializer serializer = new XmlSerializer(Polozky.GetType());
                using (StreamReader sr = new StreamReader(cesta))
                {
                    Polozky = (ObservableCollection<string>)serializer.Deserialize(sr);
                }
            }
            else
                Polozky = new ObservableCollection<string>();
        }
        public void Uloz()
        {
            XmlSerializer serializer = new XmlSerializer(Polozky.GetType());
            using (StreamWriter sw = new StreamWriter(cesta))
            {
                serializer.Serialize(sw, Polozky);
            }
        }       
    }
}
