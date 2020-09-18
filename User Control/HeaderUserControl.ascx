<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HeaderUserControl.ascx.cs" Inherits="User_Control_HeaderUserControl" %>

<style>
    #Menu2 a.dynamic {
        background-color: black !important;
        color: white !important;
        font-weight: bold !important;
        text-decoration: none !important;
        padding: 5px !important;
        border-bottom: 1px solid white !important;
    }

    #Menu2 a {
        color: White !important;
        font-weight: bold !important;
        text-decoration: none !important;
        white-space: nowrap !important;
        display: block !important;
        padding-right: 11px !important;
        padding-left: 11px !important;
    }
</style>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td align="center">
            <asp:Menu ID="Menu1" runat="server" Font-Bold="True" ForeColor="white" Orientation="Horizontal"
                Width="92%" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" StaticSubMenuIndent="10px" Style="height: 37px; font-size: 15px; background-color: black; border-bottom: 1px solid white;">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Registration/frmUserHomePage.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>

                    <asp:MenuItem NavigateUrl="~/Registration/RegisterUser/frmUpdateUserProfile.aspx"
                        Text="Profile" Value="Profile"></asp:MenuItem>

                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Registration/RegisterUser/frmUserInbox.aspx" Text="Mail"
                        Value="Mail"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Chat.aspx" Text="Live Chat Room" Value="Live Chat Room"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Registration/RegisterUser/frmChangePassword.aspx" Text="Change Password" Value="Change Password"></asp:MenuItem>
                    <asp:MenuItem Text="|" Value="|"></asp:MenuItem>
                    <%--<asp:MenuItem NavigateUrl="~/Registration/RegisterUser/frmUserFeedback.aspx" Text="FeedBack"
                        Value="FeedBack"></asp:MenuItem>--%>
                </Items>
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
                <DynamicMenuStyle BackColor="#FFFBD6" />
                <StaticSelectedStyle BackColor="#FFCC66" />
                <DynamicSelectedStyle BackColor="#FFCC66" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticHoverStyle BackColor="#990000" ForeColor="White" />

            </asp:Menu>
            <asp:LinkButton ID="lnkLogout" runat="server" OnClick="lnkLogout_Click" Font-Bold="True" ForeColor="Maroon" CausesValidation="False" Style="display: inline-block; color: Maroon; font-weight: bold; width: 55px; margin-top: -38px; float: right; background-color: white; text-decoration: none; border: 1px solid; padding: 10px;">Logout</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center">
            <strong>Welcome,&nbsp;</strong><asp:Label ID="lblUserName" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>
            &nbsp;<strong>Email</strong>:&nbsp;<asp:Label ID="lblLogin" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label></td>
    </tr>
    <tr>
        <td align="center">&nbsp; &nbsp;
        </td>
    </tr>
</table>
