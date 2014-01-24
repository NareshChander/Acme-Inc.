using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Acme
{
    public partial class customer : System.Web.UI.Page
    {
 //     SqlConnection conn = new SqlConnection("Data Source=melss002;Initial Catalog=30000957;Integrated Security=True");
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable();
        SqlCommand command = new SqlCommand();
        SqlCommand command2 = new SqlCommand();
  //      SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnaddCust_Click(object sender, EventArgs e)
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "add_customer";
            command.Connection.Open();

            SqlParameter param1 = new SqlParameter();
            param1.ParameterName = "@CustID";
            param1.SqlDbType = SqlDbType.Int;
            param1.Direction = ParameterDirection.Input;
            param1.Value = txtCustID.Text;
            command.Parameters.Add(param1);

            SqlParameter param2 = new SqlParameter();
            param2.ParameterName = "@Firstname";
            param2.SqlDbType = SqlDbType.VarChar;
            param2.Direction = ParameterDirection.Input;
            param2.Value = txtFirstName.Text;
            command.Parameters.Add(param2);

            SqlParameter param3 = new SqlParameter();
            param3.ParameterName = "@Surname";
            param3.SqlDbType = SqlDbType.VarChar;
            param3.Direction = ParameterDirection.Input;
            param3.Value = txtSurname.Text;
            command.Parameters.Add(param3);

            SqlParameter param4 = new SqlParameter();
            param4.ParameterName = "@Gender";
            param4.SqlDbType = SqlDbType.VarChar;
            param4.Direction = ParameterDirection.Input;
            param4.Value = txtGender.Text;
            command.Parameters.Add(param4);

            SqlParameter param5 = new SqlParameter();
            param5.ParameterName = "@Age";
            param5.SqlDbType = SqlDbType.Int;
            param5.Direction = ParameterDirection.Input;
            param5.Value = txtAge.Text;
            command.Parameters.Add(param5);

            SqlParameter param6 = new SqlParameter();
            param6.ParameterName = "@Address1";
            param6.SqlDbType = SqlDbType.VarChar;
            param6.Direction = ParameterDirection.Input;
            param6.Value = txtAddress1.Text;
            command.Parameters.Add(param6);

            SqlParameter param7 = new SqlParameter();
            param7.ParameterName = "@Address2";
            param7.SqlDbType = SqlDbType.VarChar;
            param7.Direction = ParameterDirection.Input;
            param7.Value = txtAddress2.Text;
            command.Parameters.Add(param7);

            SqlParameter param8 = new SqlParameter();
            param8.ParameterName = "@City";
            param8.SqlDbType = SqlDbType.VarChar;
            param8.Direction = ParameterDirection.Input;
            param8.Value = txtCity.Text;
            command.Parameters.Add(param8);

            SqlParameter param9 = new SqlParameter();
            param9.ParameterName = "@Phone";
            param9.SqlDbType = SqlDbType.VarChar;
            param9.Direction = ParameterDirection.Input;
            param9.Value = txtPhone.Text;
            command.Parameters.Add(param9);

            SqlParameter param10 = new SqlParameter();
            param10.ParameterName = "@Mobile";
            param10.SqlDbType = SqlDbType.VarChar;
            param10.Direction = ParameterDirection.Input;
            param10.Value = txtMobile.Text;
            command.Parameters.Add(param10);

            SqlParameter param11 = new SqlParameter();
            param11.ParameterName = "@Email";
            param11.SqlDbType = SqlDbType.VarChar;
            param11.Direction = ParameterDirection.Input;
            param11.Value = txtEmail.Text;
            command.Parameters.Add(param11);

            SqlParameter param12 = new SqlParameter();
            param12.ParameterName = "@Confirmemail";
            param12.SqlDbType = SqlDbType.VarChar;
            param12.Direction = ParameterDirection.Input;
            param12.Value = txtConfirmEmail.Text;
            command.Parameters.Add(param12);

            
            //adapter.InsertCommand = command;
            command.ExecuteNonQuery();
            command.Connection.Close();
            Clear();
            lblCustomerPage.Text = "Record created successfully";
        }

        protected void Clear()
        {
            txtCustID.Text = "";
            txtFirstName.Text = "";
            txtSurname.Text = "";
            txtGender.Text = "";
            txtAge.Text = "";
            txtAddress1.Text = "";
            txtAddress2.Text = "";
            txtCity.Text = "";
            txtPhone.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtConfirmEmail.Text = "";
        }

        protected void btnNewCust_Click(object sender, EventArgs e)
        {
            new_custID();
        }

        protected void new_custID()
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
            Clear();
            lblCustomerPage.Text = "Automatic customer ID provided.";
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "max_CustID";
            command.Connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            int i=0; 
            while (reader.Read())
                i = reader.GetInt32(0);
            txtCustID.Text = (i+1).ToString();
            reader.Close();
            command.Connection.Close();
        }

        protected void btnRetrieveCust_Click(object sender, EventArgs e)
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "getcustomerdetails";
            command.Connection.Open();

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@ID";
            param.SqlDbType = SqlDbType.Int;
            param.Direction = ParameterDirection.Input;
            param.Value = txtCustID.Text;
            command.Parameters.Add(param);

            adapter.SelectCommand = command;
            adapter.Fill(table);
            lblCustomerPage.Text = "";
            if (table.Rows.Count == 0)
            {
                lblCustomerPage.Text = "The customer id --> " + txtCustID.Text.ToString() + ": does not exist. Plesae check the customer id again";
                Clear();
                command.Connection.Close();
            }
            else
            {
                txtFirstName.Text = table.Rows[0].Field<string>("Firstname");
                txtFirstName.DataBind();

                txtSurname.Text = table.Rows[0].Field<string>("Surname");
                txtSurname.DataBind();

                txtGender.Text = table.Rows[0].Field<string>("Gender");
                txtGender.DataBind();

                txtAge.Text = table.Rows[0].Field<int>("Age").ToString();
                txtAge.DataBind();

                txtAddress1.Text = table.Rows[0].Field<string>("Address1");
                txtAddress1.DataBind();

                txtAddress2.Text = table.Rows[0].Field<string>("Address2");
                txtAddress2.DataBind();

                txtCity.Text = table.Rows[0].Field<string>("City");
                txtCity.DataBind();

                txtPhone.Text = table.Rows[0].Field<string>("Phone");
                txtPhone.DataBind();

                txtMobile.Text = table.Rows[0].Field<string>("Mobile");
                txtMobile.DataBind();

                txtEmail.Text = table.Rows[0].Field<string>("Email");
                txtEmail.DataBind();

                txtConfirmEmail.Text = table.Rows[0].Field<string>("ConfirmEmail");
                txtConfirmEmail.DataBind();
            }
            command.Connection.Close();
        }

        protected void btnUpdateCust_Click(object sender, EventArgs e)
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "getcustomerdetails";
            command.Connection.Open();

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@ID";
            param.SqlDbType = SqlDbType.Int;
            param.Direction = ParameterDirection.Input;
            param.Value = txtCustID.Text;
            command.Parameters.Add(param);

            adapter.SelectCommand = command;
            command.ExecuteNonQuery();
            adapter.Fill(table);
            lblCustomerPage.Text = "";
            if (table.Rows.Count == 0)
            {
                lblCustomerPage.Text = "The customer id --> " + txtCustID.Text.ToString() + ": does not exist. Plesae check the customer id again";
                Clear();
                command.Connection.Close();
            }
            else
            {
                command.Connection.Close();
                command2.Connection = conn;
                command2.CommandType = CommandType.StoredProcedure;
                command2.CommandText = "update_customer";
                command2.Connection.Open();


                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = "@ID";
                param1.SqlDbType = SqlDbType.Int;
                param1.Direction = ParameterDirection.Input;
                param1.Value = txtCustID.Text;
                command2.Parameters.Add(param1);

                SqlParameter param2 = new SqlParameter();
                param2.ParameterName = "@Firstname";
                param2.SqlDbType = SqlDbType.VarChar;
                param2.Direction = ParameterDirection.Input;
                param2.Value = txtFirstName.Text;
                command2.Parameters.Add(param2);

                SqlParameter param3 = new SqlParameter();
                param3.ParameterName = "@Surname";
                param3.SqlDbType = SqlDbType.VarChar;
                param3.Direction = ParameterDirection.Input;
                param3.Value = txtSurname.Text;
                command2.Parameters.Add(param3);

                SqlParameter param4 = new SqlParameter();
                param4.ParameterName = "@Gender";
                param4.SqlDbType = SqlDbType.VarChar;
                param4.Direction = ParameterDirection.Input;
                param4.Value = txtGender.Text;
                command2.Parameters.Add(param4);

                SqlParameter param5 = new SqlParameter();
                param5.ParameterName = "@Age";
                param5.SqlDbType = SqlDbType.Int;
                param5.Direction = ParameterDirection.Input;
                param5.Value = txtAge.Text;
                command2.Parameters.Add(param5);

                SqlParameter param6 = new SqlParameter();
                param6.ParameterName = "@Address1";
                param6.SqlDbType = SqlDbType.VarChar;
                param6.Direction = ParameterDirection.Input;
                param6.Value = txtAddress2.Text;
                command2.Parameters.Add(param6);

                SqlParameter param7 = new SqlParameter();
                param7.ParameterName = "@Address2";
                param7.SqlDbType = SqlDbType.VarChar;
                param7.Direction = ParameterDirection.Input;
                param7.Value = txtAddress1.Text;
                command2.Parameters.Add(param7);

                SqlParameter param8 = new SqlParameter();
                param8.ParameterName = "@City";
                param8.SqlDbType = SqlDbType.VarChar;
                param8.Direction = ParameterDirection.Input;
                param8.Value = txtCity.Text;
                command2.Parameters.Add(param8);

                SqlParameter param9 = new SqlParameter();
                param9.ParameterName = "@Phone";
                param9.SqlDbType = SqlDbType.VarChar;
                param9.Direction = ParameterDirection.Input;
                param9.Value = txtPhone.Text;
                command2.Parameters.Add(param9);

                SqlParameter param10 = new SqlParameter();
                param10.ParameterName = "@Mobile";
                param10.SqlDbType = SqlDbType.VarChar;
                param10.Direction = ParameterDirection.Input;
                param10.Value = txtMobile.Text;
                command2.Parameters.Add(param10);

                SqlParameter param11 = new SqlParameter();
                param11.ParameterName = "@Email";
                param11.SqlDbType = SqlDbType.VarChar;
                param11.Direction = ParameterDirection.Input;
                param11.Value = txtEmail.Text;
                command2.Parameters.Add(param11);

                SqlParameter param12 = new SqlParameter();
                param12.ParameterName = "@Confirmemail";
                param12.SqlDbType = SqlDbType.VarChar;
                param12.Direction = ParameterDirection.Input;
                param12.Value = txtConfirmEmail.Text;
                command2.Parameters.Add(param12);

                adapter.UpdateCommand = command2;
                command2.ExecuteNonQuery();
                lblCustomerPage.Text = "Record updated successfully";
                command2.Connection.Close();
            }
            Clear();
        }

        protected void btnDeleteCust_Click(object sender, EventArgs e)
        {
            //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
            command.Connection = conn;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "getcustomerdetails";
            command.Connection.Open();

            SqlParameter param = new SqlParameter();
            param.ParameterName = "@ID";
            param.SqlDbType = SqlDbType.Int;
            param.Direction = ParameterDirection.Input;
            param.Value = txtCustID.Text;
            command.Parameters.Add(param);

            adapter.SelectCommand = command;
        //    command.ExecuteNonQuery();
            adapter.Fill(table);

            if (table.Rows.Count == 0)
            {
                lblCustomerPage.Text = "The customer id --> " + txtCustID.Text.ToString() + ": does not exist. Plesae check the customer id again";
                Clear();
                command.Connection.Close();
            }
            else
            {
                command.Connection.Close();
                command2.Connection = conn;
                command2.CommandType = CommandType.StoredProcedure;
                command2.CommandText = "delete_customer";
                command2.Connection.Open();


                SqlParameter del_param = new SqlParameter();
                del_param.ParameterName = "@ID";
                del_param.SqlDbType = SqlDbType.Int;
                del_param.Direction = ParameterDirection.Input;
                del_param.Value = txtCustID.Text;
                command2.Parameters.Add(del_param);

                adapter.DeleteCommand = command2;
                command2.ExecuteNonQuery();
                lblCustomerPage.Text = "Record deleted successfully";
                command2.Connection.Close();
            }
            Clear();
        }

    }
}
