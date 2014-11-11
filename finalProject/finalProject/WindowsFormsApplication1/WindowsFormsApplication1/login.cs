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

namespace WindowsFormsApplication1
{
    public partial class login : System.Windows.Forms.Form
    {
        OleDbConnection conn;
        OleDbDataAdapter adapter;
        
      
        public login()
        {
            InitializeComponent();
            password_txt.PasswordChar = '*';
            password_txt.MaxLength = 10;

        }
        public string getConnectionString()
        {
            // make sure that connection string is right. This is hard coded to my flash drive so it will need to be changed 
            return "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:..\\..\\..\\..\\ProjectDatabaseFiles\\MBUsers2.mdb";
        }

        private void button1_Click_1(object sender, EventArgs e)
        {

            //store user input
            string strUN = this.textBox1.Text;
            string strPW = this.password_txt.Text;
            conn = new OleDbConnection(getConnectionString());

            using(conn)
            {
                System.Data.OleDb.OleDbCommand cmd = conn.CreateCommand();
                cmd.CommandText = "SELECT permissions FROM users where username=? AND password=?";
                cmd.Parameters.AddWithValue("", strUN);
                cmd.Parameters.AddWithValue("", strPW);
                conn.Open();
                object username = cmd.ExecuteScalar();
                var permissions = cmd.ExecuteScalar();
                if (username == null)
                {
                    MessageBox.Show("Invalid Username or Password");
                }
                else
                {

                    conn.Close();
                    MessageBox.Show("login successful");
                    string permis = permissions.ToString();
                    if (permis == "3")
                    {
                        // hide the "MADBooks Login" form
                        this.Hide();
                        // change to the "MADBooks Search" form
                        mainSearch f2 = new mainSearch();
                        f2.ShowDialog();
                    }
                    else
                    {
                        this.Hide();
                        employeePage f3 = new employeePage();
                        f3.ShowDialog();

                    }
                    
                    //if 
                }
            }   
        }

        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

            string strUsers = "SELECT * FROM users";
            conn = new OleDbConnection(getConnectionString());
            adapter = new OleDbDataAdapter(strUsers, conn);

            conn.Close();
        }

        private void button1_Click_2(object sender, EventArgs e)
        {
            // hide the "MADBooks Login" form
            this.Hide();
            // change to the "Create new user" form
            CreateUser f3 = new CreateUser();
            f3.ShowDialog();
        }

        private void usernameTipLogin_Click(object sender, EventArgs e)
        {
            MessageBox.Show("This is the username that you created not your first name.");
        }

        private void pwTipLogin_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Password can be a max of 10 characters long. No spaces are allowed");
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            //hide the login 
            this.Hide();
            //go to the employee page
            employeePage f8 = new employeePage();
            f8.ShowDialog();
        }
    }
}
