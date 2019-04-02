using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SklepKomputerowy
{
    public partial class Form1 : Form
    {
        firma_komputerowaEntities db;
        public Form1()
        {
            InitializeComponent();
            db = new firma_komputerowaEntities();
        }

        private void addprinterbutton_Click(object sender, EventArgs e)
        {
            String printerModel = "newPrinter";

            Produkty newProduct = new Produkty();
            newProduct.model = printerModel;
            newProduct.typ = "Drukarka";
            newProduct.producent = "Brother";

            db.Produkty.Add(newProduct);
            db.SaveChanges();

            Drukarki newPrinter = new Drukarki();
            newPrinter.cena = 2000;
            newPrinter.kolor = true;
            newPrinter.model = printerModel;
            newPrinter.typ = "Laserowa";

            db.Drukarki.Add(newPrinter);
            db.SaveChanges();

            db.Drukarki.Where(printer => printer.model == printerModel);
        }
    }
}
