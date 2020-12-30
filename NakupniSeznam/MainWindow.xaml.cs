using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace NakupniSeznam
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Organizator organizator;
        public MainWindow()
        {
            InitializeComponent();
            organizator = new Organizator();
            try
            {
                organizator.Nacti();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Chyba", MessageBoxButton.OK, MessageBoxImage.Error);
            }
            DataContext = organizator;
        }

        private void pridatButton_Click(object sender, RoutedEventArgs e)
        {
            organizator.Pridej(obsahTextBox.Text);
            obsahTextBox.Text = "";
            try
            {
                organizator.Uloz();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Chyba", MessageBoxButton.OK, MessageBoxImage.Exclamation);
            }
        }

        private void odebratButton_Click(object sender, RoutedEventArgs e)
        {
            if (seznamListBox.SelectedItem != null)
            {
                organizator.Odeber((string)seznamListBox.SelectedItem);
                try
                {
                    organizator.Uloz();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Chyba", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
    }
}
