using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvanceConcepts
{
	public partial class WebForm2 : System.Web.UI.Page
	{
        protected void LogoutBtn_Click(object sender, EventArgs e)
            {
            if (Session["name"] != null)
                {
                Session["name"] = null;
                Response.Redirect("ContactUs.aspx");
                }
        }
        protected void Page_Load(object sender, EventArgs e)
		{



            if (Session["name"]!=null && Session["age"]!=null && Session["email"] != null)
                    {
                    NameBox.Text = Session["name"].ToString();
                    AgeBox.Text = Session["age"].ToString();
                    EmailBox.Text = Session["email"].ToString();
                Response.Write($"Name is {NameBox.Text}, Age is {AgeBox.Text},Email is {EmailBox.Text}");
                }
            else
                {
                Response.Redirect("ContactUs.aspx");
                }

               
            }
	}
}