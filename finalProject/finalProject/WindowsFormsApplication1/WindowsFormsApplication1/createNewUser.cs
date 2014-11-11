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


namespace WindowsFormsApplication1
{

    public partial class CreateUser : Form
    {

        OdbcConnection conn;
        OdbcCommand cmd;
       

        public CreateUser()
        {
            InitializeComponent();
            CUpassword_txt.PasswordChar = '*';
            CUpassword_txt.MaxLength = 10;
            CUpassword_txt.Text = "**********";
            CUpassword_txt.Click += new EventHandler(CUpassword_txt_Click);
            
        }
       

        // closes the application
        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        //will clear all the information from the text boxes
        private void button2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Are you sure you want to clear all information?");
            firstName_txt.Text = "";
            lastName_txt.Text = "";
            CUuser_txt.Text = "";
            CUpassword_txt.Text = "**********";

        }

        // When page is loaded will make a connection to the access database using a 32 bit dsn
        private void Form3_Load(object sender, EventArgs e)
        {
            try
            {

                conn = new OdbcConnection();
                conn.ConnectionString = "dsn=MBUsers32";
                conn.Open();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }


        // takes information form the text boxes and will input it into the access database
        private void button1_Click(object sender, EventArgs e)
        {
            // information goes to the customers table
            try
            {
                string insert = "insert into Customers (firstName, lastName, userName, password) VALUES (?, ?, ?, ?)";
                cmd = new OdbcCommand(insert, conn);
                cmd.CommandText = insert;
                cmd.Parameters.AddWithValue("firstName", firstName_txt.Text.ToString());
                cmd.Parameters.AddWithValue("lastName", lastName_txt.Text.ToString());
                cmd.Parameters.AddWithValue("userName", CUuser_txt.Text.ToString());
                cmd.Parameters.AddWithValue("password", CUpassword_txt.Text.ToString());
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }

            //information goes the the users table the permission is hard coded all people who are created this was are only users
            try
            {
                string insert2 = "insert into Users (username, password, permissions) VALUES (?, ?, ?)";
                cmd = new OdbcCommand(insert2, conn);
                cmd.CommandText = insert2;
                cmd.Parameters.AddWithValue("userName", CUuser_txt.Text.ToString());
                cmd.Parameters.AddWithValue("password", CUpassword_txt.Text.ToString());
                cmd.Parameters.AddWithValue("permissions", 3);
                cmd.ExecuteNonQuery();


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            //This one to be kept
            conn.Close();
            MessageBox.Show("Your user information has been added!");

            //hide the create new user form
            this.Hide();
            //Back to the login
            login f1 = new login();
            f1.ShowDialog();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            //hide create user page
            this.Hide();
            //Go to the login screen
            login f1 = new login();
            f1.ShowDialog();
        }

        private void pwInfo_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Password can be a max of 10 characters long. No spaces are allowed");
        }
        private void CUpassword_txt_Click(object sender, EventArgs e)
        {
            CUpassword_txt.Text = "";
        }

        private void usernameTip_Click(object sender, EventArgs e)
        {
            MessageBox.Show("This is the name that you will use to login.");
        }

    }
}
