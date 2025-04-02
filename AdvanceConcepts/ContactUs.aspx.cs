using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdvanceConcepts
{
	public partial class ContactUs : System.Web.UI.Page
	{
        //string name, age, gender, email, password;
		protected void Page_Load(object sender, EventArgs e)
		{
               if (!IsPostBack)
                {
           
                }
            else
                {
                Response.Write("Postback Condition");
                }
		}

        protected void RestoreBtn_Click(object sender, EventArgs e) 
            {
            NameTextBox.Text = Session["name"].ToString();
            AgeTextBox.Text = ViewState["age"].ToString();
            EmailTextBox.Text = ViewState["email"].ToString();
            PasswordTextBox.Text = ViewState["password"].ToString();

            }


        protected void Button1_Click1(object sender, EventArgs e)
            {
            Session["name"] = NameTextBox.Text;
            Session["email"] = EmailTextBox.Text;
            Session["age"] = AgeTextBox.Text;
            Session["gender"] = MaleRadioBtn.Checked ? "male" : "female";
            Session["password"] = PasswordTextBox.Text;
            Response.Write("No PostBack");
            NameTextBox.Text = string.Empty;
            AgeTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            PasswordTextBox.Text = string.Empty;

            Response.Redirect("Dashboard.aspx");
            }

        protected void Age_PreRender(object sender, EventArgs e)
            {

            }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
            { 

            args.IsValid = (MaleRadioBtn.Checked || FemaleRadioBtn.Checked) ? true : false;
            }

        protected void RestoreBtn_Click1(object sender, EventArgs e)
            {

            }

        protected void btnRestore_Click(object sender, EventArgs e)
            {
            //NameTextBox.Text = Session["name"].ToString();
            //AgeTextBox.Text = Session["age"].ToString();
            //EmailTextBox.Text = Session["email"].ToString();
            //PasswordTextBox.Text = Session["password"].ToString();

            NameTextBox.Text = ViewState["name"]!=null ? ViewState["name"].ToString() : "" ;
            AgeTextBox.Text = ViewState["age"]!=null ? ViewState["age"].ToString() :"";
            EmailTextBox.Text = ViewState["email"] != null ? ViewState["email"].ToString() : "";
            PasswordTextBox.Text = ViewState["password"] != null ? ViewState["password"].ToString() : "";
            }
        }
}