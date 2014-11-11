using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.OleDb;
using System.Data.Odbc;
using MySql.Data.MySqlClient;

namespace WindowsFormsApplication1
{
    public partial class mainSearch : Form
    {
       
        MySqlConnection sqlconn;
        public mainSearch()
        {
            InitializeComponent();
            connectToDB();
        }
        private string mysqlConnectionString(){
            return "Server=localhost;Database=mbbooks;Uid=root;Pwd=student";
        }
        private void connectToDB()
        {
            try
            {
                sqlconn = new MySqlConnection(mysqlConnectionString());
                sqlconn.Open();
            }
            catch (OdbcException oex)
            {
                MessageBox.Show(oex.Message.ToString());
            }
        }

        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // This will have the different Genre of books 
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            connectToDB();
            try {
            MySqlCommand sql = sqlconn.CreateCommand();
            string colName = conditionsBox.Text; 
            string colVal = searchTxt.Text;
            sql.CommandText = "SELECT * FROM booklist WHERE "+colName+" = '"+colVal+"'";
            MySqlDataAdapter adap = new MySqlDataAdapter(sql);
            DataSet ds = new DataSet();
            adap.Fill(ds);
            bookData.DataSource = ds.Tables[0].DefaultView;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if (sqlconn.State == ConnectionState.Open)
                {
                    sqlconn.Close();
                }
            }
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Hide the "MADBooks search" screen
            this.Hide();

            //Open the "MADBooks Login" screen
            login f1 = new login();
            f1.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //connectToDB();
            try
            {
                MySqlCommand sql = sqlconn.CreateCommand();
                //THIS IS A STORED PROCEDURE
                sql.CommandText = "CALL GetAllBooks()";
                MySqlDataAdapter adap = new MySqlDataAdapter(sql);
                DataSet ds = new DataSet();
                adap.Fill(ds);
                bookData.DataSource = ds.Tables[0].DefaultView;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                if(sqlconn.State == ConnectionState.Open)
                {
                    sqlconn.Close();
                }
            }
            
        }

       
        private void toSearchPageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //Hide the search result page
            this.Hide();
            //go to the search page
            mainSearch f2 = new mainSearch();
            f2.ShowDialog();
        }
    }
}
