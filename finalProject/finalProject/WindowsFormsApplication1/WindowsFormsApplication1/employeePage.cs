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
    public partial class employeePage : Form
    {
        DataSet dset;
        OleDbConnection conn;
        OleDbDataAdapter adapter;
        DataRelation relation;
        public employeePage()
        {
            InitializeComponent();
            tableNameBox.Click += new EventHandler(tableNameBox_Click);
        }

        public string getConnectionString()
        {
            // make sure that connection string is right. This is hard coded to my flash drive so it will need to be changed 
            return "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:..\\..\\..\\..\\ProjectDatabaseFiles\\MBUsers2.mdb";
        }

        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void toSearchPageToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //hide this page
            this.Hide();
            //go to the main search page 
            mainSearch ms = new mainSearch();
            ms.ShowDialog();
        }

   
        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            // hide this page
            this.Hide();
            // Go to the login page
            login log = new login();
            log.ShowDialog();
        }
        private void queryDB()
        {
            string strCutsomers = "SELECT * FROM customers";
            string strEmployee = "SELECT * FROM employees";
            string strUsers = "SELECT * FROM users";
            //Connect to the data base
            conn = new OleDbConnection(getConnectionString());  

            //Make the adapter for customer
            adapter = new OleDbDataAdapter(strCutsomers, conn);

            //create ne data set
            dset = new DataSet();

            //Fill the data set for customer
            adapter.Fill(dset, "Customers");

            //Make the adapter for employee
            adapter = new OleDbDataAdapter(strEmployee, conn);

            //fill the adapter for employee
            adapter.Fill(dset, "Employees");

            //make an adapter for users
            adapter = new OleDbDataAdapter(strUsers, conn);

            //fill the adapter
            adapter.Fill(dset, "Users");

            relation = dset.Relations.Add("Customers Employees",
                                            dset.Tables["Customers"].Columns["customerID"],
                                            dset.Tables["Users"].Columns["userID"]);

            relation = dset.Relations.Add("CustomerUser",
                dset.Tables["Customers"].Columns["customerID"],
                dset.Tables["Employees"].Columns["employeeID"]);

            conn.Close();
        }
        private void employeePage_Load(object sender, EventArgs e)
        {
            queryDB();
        }

        private void displayBtn_Click(object sender, EventArgs e)
        {
            string tableName = this.tableBox.Text;
            //this will display the data in the box
            this.displayDataBox.DataSource = dset.Tables[tableName];
        }

 

        private void updateBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string sql = "select * from " + tableBox.Text;
                conn = new OleDbConnection(getConnectionString());
                //MessageBox.Show(conn.ToString());
                adapter = new OleDbDataAdapter(sql, conn);
               // MessageBox.Show(adapter.ToString());

                //the CommandBuilder will allow for the use of insert, update and delete commands 
                OleDbCommandBuilder cbuilder = new OleDbCommandBuilder(adapter);

                DataTable table = dset.Tables[tableBox.Text];
                //the adapter sends the change back to the data source 

                adapter.Update(table);
                MessageBox.Show("Table" + tableBox.Text + " is updated");
                queryDB();
            }
            catch(Exception ex)
            {
               Console.WriteLine(ex.ToString());
            }
            

        }
        private void tableNameBox_Click(object sender, EventArgs e)
        {
            tableNameBox.Text = "";
        }


        private void button1_Click(object sender, EventArgs e)
        {

            adapter = new OleDbDataAdapter();
            conn = new OleDbConnection(getConnectionString());
            try
            {
                using (conn)
                {
                    string tableName = tableBox.Text;
                    tableName = tableName.Replace("Users", "User");
                    string sql = "DELETE FROM "+tableBox.Text+" where "+tableName+"ID ="+tableNameBox.Text;
                    MessageBox.Show(sql);
                    conn.Open();
                    adapter.DeleteCommand = conn.CreateCommand();
                    adapter.DeleteCommand.CommandText = sql;
                    int rows = adapter.DeleteCommand.ExecuteNonQuery();
                    if (rows > 0)
                    {
                        MessageBox.Show("Delete Successful");
                        queryDB();
                    }
                    else
                    {
                        MessageBox.Show("Delete Failed");
                    }
                }
            }
            catch (Exception ex)
            {
               Console.WriteLine(ex.Message);
            }
        }


    }
}
