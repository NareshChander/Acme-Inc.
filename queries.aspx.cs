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
    public partial class queries : System.Web.UI.Page
    {
        //     SqlConnection conn = new SqlConnection("Data Source=melss002;Initial Catalog=30000957;Integrated Security=True");
        SqlConnection conn = new SqlConnection("Data Source=.;Initial Catalog=master;Integrated Security=True");
        SqlCommand command = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblQueriesPage.Text = "";
        }

        protected void btnExecuteQuery_Click(object sender, EventArgs e)
        {
                //conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbConnection1"].ConnectionString);
                SqlCommand command = new SqlCommand();
                command.Connection = conn;
                command.CommandType = CommandType.Text;
                command.CommandText = txtSQL.Text;
            SqlDataReader reader;
                command.Connection.Open();
                try
                {
                    reader = command.ExecuteReader();
                    gvCustomer.DataSource = reader;
                    gvCustomer.DataBind();
                    reader.Dispose();
                }
                catch (Exception ex)
                {
                    gvCustomer.Visible = false;
                    lblQueriesPage.Text = "Something wrong with the query syntax. Please check your syntax again.";// +ex.ToString();
                }
                finally
                {
                    conn.Close();
                }
                command.Dispose();
                conn.Dispose();
        }
    }
}
