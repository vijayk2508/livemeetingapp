using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Registration_frmUserHomePage : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void BindData()
    { 
    
    }
    protected void lnkProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Registration/frmUpdateUserProfile.aspx");
    }
}
