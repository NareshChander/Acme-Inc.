using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Acme
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (!Page.IsPostBack)
                {
                    string selectedTheme = Page.Theme;
                    HttpCookie userSelectedTheme =
                    Request.Cookies.Get("UserSelectedTheme");
                    if (userSelectedTheme != null)
                    {
                        selectedTheme = userSelectedTheme.Value;
                    }
                    if (!string.IsNullOrEmpty(selectedTheme) &&
                    ddlSetTheme.Items.FindByValue(selectedTheme) != null)
                    {
                        ddlSetTheme.Items.FindByValue(selectedTheme).Selected =
                        true;
                    }
                }
            }
        }

        private void Page_PreInit(object sender, EventArgs e)
        {
            HttpCookie setTheme = Request.Cookies.Get("UserSelectedTheme");
            if (setTheme != null)
            {
                Page.Theme = setTheme.Value;
            }
        }

        protected void ddlSetTheme_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie userSelectedTheme = new
            HttpCookie("UserSelectedTheme");
            userSelectedTheme.Expires = DateTime.Now.AddMonths(6);
            userSelectedTheme.Value = ddlSetTheme.SelectedValue;
            Response.Cookies.Add(userSelectedTheme);
            Response.Redirect(Request.Url.ToString());
        }
    }
     
}
