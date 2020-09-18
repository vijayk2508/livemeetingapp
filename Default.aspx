<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/HomeMasterPage.master"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="375">
        <tr>
            <td style="width: 100%" valign="top" align="left">
                <table width="100%" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td valign="top" width="60%">
                            <table width="100%" border="0" style="background-color: white;">
                                <tr>
                                    <td width="100%" align="center">
                                        <img src="images/img1.jpg" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <img src="images/home-banner.jpg" /></td>
                                </tr>
                                <tr>
                                    <td align="justify">
                                        <div align="justify" style="padding: 12px;">
                                            <span style="font-family: Verdana; font-size: 10px; font-weight: bold; letter-spacing: 1px">This project is mainly developed for the communication of Employees of organization located at different locations. The project entitled “Live Meeting” set of platform for the project leaders and administrator to send messages to keep constant interaction with the programmers.
                                            <br />
                                                This application has the following main functionality:
                                            <br />
                                                1.	Receiving/Sending/organizing mails.
                                            <br />
                                                2.	Sending mail using send mail.
                                            <br />
                                                <br />
                                                3.    Organize mails in Logical Folders<br />
                                                4. It Provides Live Meeting (Chat) using Join Chat Room after Sucessfully login.&nbsp;<br />
                                                5.	Performing Admin functions like managing new user, resetting passwords etc.

                                            </span>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td valign="top" width="40%" style="background: black;">
                            <table width="100%">
                                <tr>
                                    <td colspan="3"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel1" runat="server" Width="100%" BorderColor="Silver" BorderWidth="1px">
                                            <table cellpadding="0" cellspacing="0" width="100%">

                                                <tr>
                                                    <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; background-color: #7a97c3; font-size: 12pt;">Already Registered User</td>
                                                </tr>
                                                <tr>
                                                    <td colspan="3"></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-weight: bold; color: white" width="28%">User Name</td>
                                                    <td width="2%" align="left" style="font-weight: bold; color: white"></td>
                                                    <td align="left" style="font-weight: bold; color: #ffffff">
                                                        <asp:TextBox ID="txtUserName" runat="server" ValidationGroup="g1" style="margin: 11px 0 4px 2px;width: 89%;"></asp:TextBox>
														
														<font color="white">@livemeeting.com<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                                                            ErrorMessage="*" Font-Bold="True" ValidationGroup="g1"
                                                            SetFocusOnError="True" ToolTip="Enter User Name"></asp:RequiredFieldValidator></font></td>
                                                </tr>
                                                <tr>
                                                    <td style="font-weight: bold; color: white;padding-left: 10px;">Password</td>
                                                    <td align="left" style="font-weight: bold; color: white"></td>
                                                    <td align="left">
                                                        <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="g1" Width="149px" TextMode="Password" style="width: 89%;margin: 5px 0 0 2px;"></asp:TextBox>
														
														<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                                                            ErrorMessage="*" Font-Bold="True" ValidationGroup="g1"
                                                            ToolTip="Enter Password"></asp:RequiredFieldValidator></td>
												</tr>
												<tr>
												<td align="right" colspan="3">
												       <asp:Button ID="btnSignUp" runat="server" Text="Login" OnClick="btnSignUp_Click"
                                                            ValidationGroup="g1" style="margin: 5px 17px 0 0px;background: #4444c3;padding: 2px 82px;color: white;font-size: 15px;font-weight: revert;border: 2px solid #0d0d8d;border-radius: 2px;line-height: 1.3;"/>
															</td>
												</tr>
                                                <tr>
                                                    <td align="center" colspan="3" style="font-weight: bold; color: black">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3" style="font-weight: bold; color: black">
                                                        <asp:LinkButton ID="lnkForgotPassword" runat="server" Font-Bold="True" ForeColor="white" OnClick="lnkForgotPassword_Click" Width="177px"  style="text-decoration:none;margin: -10px 0px -5px 30px;">Forgot Your Password ?</asp:LinkButton></td>
                                                </tr>
                                                <tr>
                                                    <td align="center" colspan="3" style="font-weight: bold; color: white">&nbsp;</td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel2" runat="server" BorderColor="Silver" BorderWidth="1px" Width="100%">
                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                <tr>
                                                    <td align="center" style="font-weight: bold; font-size: 12pt; color: #ffffff; background-color: #7a97c3;">If New User ?
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="font-weight: bold; font-size: 14pt; color: #ffffff; width: 392px;">&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td align="center" style="width: 392px">
                                                        <asp:Label ID="lblRegister" runat="server" Font-Bold="True" ForeColor="white">Register Now !</asp:Label>
                                                        <asp:ImageButton ID="imgRegister" runat="server" ImageUrl="images/click.gif" OnClick="imgRegister_Click" />

                                                    </td>
                                                </tr>
                                            </table>
                                        </asp:Panel>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
