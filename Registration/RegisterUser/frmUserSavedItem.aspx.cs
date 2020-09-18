using System;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class Registration_RegisterUser_frmUserSpam : System.Web.UI.Page
{
    private UserInboxBL inbox = new UserInboxBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            BindGridView();
        }
    }

    private void BindGridView()
    {
        inbox.To = Session["UserName"].ToString() + ConfigurationManager.AppSettings["email"];
        GridView1.DataSource = inbox.ShowSavedItems();
        GridView1.DataBind();
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chk1");
            if (CheckBox1.Checked == true)
            {
                chk.Checked = true;
            }
            else
            {
                chk.Checked = false;
            }
        }

    }
    protected void ImgForward_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked == true)
            {
                lbl = (Label)gr.FindControl("lblid");
                inbox.Id = int.Parse(lbl.Text);
                Session["Id"] = inbox.Id;
                Response.Redirect("~/Registration/RegisterUser/frmUserForwardMail.aspx");
                lblMsg.Text = "";
            }
            else
            {

                lblMsg.Text = "Plz Select Mail...!";

            }
        }


    }
    protected void ImgDelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            lbl = (Label)gr.FindControl("lblid");
            inbox.Id = int.Parse(lbl.Text);
            inbox.To = Session["UserName"].ToString() + ConfigurationManager.AppSettings["email"];
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked == true)
            {
                inbox.DeleteMailFromInbox();
                BindGridView();
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "Plz Select Mail...!";

            }
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            inbox.To = Session["UserName"].ToString() + ConfigurationManager.AppSettings["email"];
            inbox.Id = int.Parse(e.CommandArgument.ToString());
            inbox.UpdateMailReadingStatus();
            Session["To"] = inbox.To;
            Session["Id"] = int.Parse(e.CommandArgument.ToString());
            Response.Redirect("~/Registration/RegisterUser/frmFullMailPage.aspx");
        }

    }
}
