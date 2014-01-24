using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Acme
{
    public partial class Site1 : System.Web.UI.MasterPage
    {

        protected void btnContactUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("contactus.aspx");
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("customer.aspx");
        }

        protected void btnQueries_Click(object sender, EventArgs e)
        {
            Response.Redirect("queries.aspx");
        }

       
    }
}
