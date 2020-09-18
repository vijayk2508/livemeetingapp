using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;

public partial class Registration_RegisterUser_frmUserDraftItems : System.Web.UI.Page
{
    private UserDraftBoxBL draft = new UserDraftBoxBL();
    private UserInboxBL inbox = new UserInboxBL();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] == null)
        {
            Response.Redirect("~/Default.aspx");
        }
        if (!IsPostBack)
        {
            BindGridview();
        }

    }

    private void BindGridview()
    {
        draft.LoginName = Session["UserName"].ToString();
        GridView1.DataSource = draft.ShowAllDraftItem();
        GridView1.DataBind();
    }
    protected void ImgDelete_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;

        foreach (GridViewRow gr in GridView1.Rows)
        {
            lbl = (Label)gr.FindControl("lblid");
            draft.Id = int.Parse(lbl.Text);
            draft.From = Session["UserName"].ToString() + ConfigurationManager.AppSettings["email"];
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked == true)
            {
                draft.DeleteMailFromDraft();
                BindGridview();
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "Plz Select Mail...!";

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
                draft.Id = int.Parse(lbl.Text);
                Session["Id"] = draft.Id;
                Response.Redirect("~/Registration/RegisterUser/frmUserForwardMail.aspx");
                lblMsg.Text = "";
            }
            else
            {
                lblMsg.Text = "Plz Select Mail...!";

            }
        }

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
    protected void ImgSend_Click(object sender, EventArgs e)
    {
        CheckBox chk;
        Label lbl;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            chk = (CheckBox)gr.FindControl("chk1");
            if (chk.Checked)
            {
                lbl = (Label)gr.FindControl("lblid");
                //ViewState["Id"] = int.Parse(lbl.Text);
                draft.Id = int.Parse(lbl.Text);
                DataSet ds = new DataSet();
                ds = draft.ShowDraftItemById();
                DataRow dr = ds.Tables[0].Rows[0];
                inbox.LoginName = Session["UserName"].ToString();
                inbox.From = Session["UserName"].ToString() + ConfigurationManager.AppSettings["email"];
                inbox.To = dr[0].ToString();
                inbox.Subject = dr[1].ToString();
                inbox.FullMessage = dr[2].ToString();
                inbox.Date = System.DateTime.Now;
                inbox.Attachement = dr[3].ToString();
                inbox.Size = dr[4].ToString();
                inbox.SendStatus = "Sent";
                inbox.InsertInUserInbox();
                draft.LoginName = Session["UserName"].ToString();
                draft.UpdateDraftItemStatus();
                BindGridview();
                Session["To"] = dr[0].ToString();
                Response.Redirect("~/Registration/RegisterUser/frmSendmailMessagePage.aspx");
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
