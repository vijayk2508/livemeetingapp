<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Chat.aspx.cs" Inherits="Chat" %>

<%@ Import Namespace="ASPNETChat" %>
<%@ Register Src="~/User Control/HeaderUserControl.ascx" TagPrefix="uc1" TagName="HeaderUserControl" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Live Meeting - Chat Room</title>
    <link href="StyleSheet.css" type="text/css" rel="stylesheet" />
    <link href="App_Themes/Default.css" rel="stylesheet" type="text/css" />
     <style>
        body {
            background-color: #090e11 !important;
        }

        .top-img {
            height: 100px;
            width: 157.82px;
        }

        .title {
            background-color: white;
            color: black;
            font-size: 12px;
            margin: 0px;
            width: 157.82px;
            display: inline-flex;
        }
    </style>
</head>
<body onunload="Leave()">
    <form id="form1" runat="server">
        <table width="800" border="0" align="center" cellpadding="0" cellspacing="0" class="bordermain" style="background-color: #D3E5ED">
                        <tr>
                    <td valign="top">
                        <div style="background-color: black; margin: 0px;">
                            <img class="top-img" src="images/image1.jpg" alt="" />

                            <img class="top-img" src="images/image2.jpg" alt="" />

                            <img class="top-img" src="images/image3.jpg" alt="" />

                            <img class="top-img" src="images/image4.jpg" alt="" />

                            <img class="top-img" src="images/image5.jpg" alt="" />
                        </div>
                        <div style="background-color: black; margin: 0px;">

                            <h5 class="title">Live Dicussion</h5>
                            <h5 class="title">Business Meetings</h5>
                            <h5 class="title">Friends And Family</h5>
                            <h5 class="title">Meet New People</h5>
                            <h5 class="title">Private Chat</h5>

                        </div>
                    </td>
                </tr>
            <tr>
                <td valign="top" align="center">
                    <uc1:HeaderUserControl runat="server" ID="HeaderUserControl" />
                </td>
            </tr>
            <tr>
                <td height="395" valign="top">
                    <input id="hdnRoomID" type="hidden" name="hdnRoomID" runat="server" />
                    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="True" EnablePageMethods="True">
                        <Scripts>
                            <asp:ScriptReference Path="scripts.js" />
                        </Scripts>
                    </asp:ScriptManager>


                    <table cellpadding="0" cellspacing="0" width="800">
                        <tr>
                            <td width="80%">
                                <asp:TextBox runat="server" TextMode="MultiLine" ID="txt" Rows="16" Columns="79" Height="260px" Width="678px" style="margin-left: 5px;"></asp:TextBox>&nbsp;
                    <br />
                                <asp:TextBox ID="txtMsg" Width="400" runat="server" style="margin-left: 5px;"></asp:TextBox>&nbsp;&nbsp;
                                <input id="btn" onclick="button_clicked()" type="button" value="SEND" class="btn" />
                            </td>
                            <td width="20%" rowspan="2" valign="top">
                                <asp:Label ID="lblRoomMembers" Text="Room Members" runat="server" style=" margin-left: 5px; font-weight: 600; font-size: 15px; "></asp:Label>
                                <br />
                                &nbsp;
                            
                            <asp:ListBox runat="server" Width="100" ID="lstMembers" Enabled="false" Height="249px"></asp:ListBox>

                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td height="30" bgcolor="#E9713F" class="content" align="center" style="text-align: center; background-color: black; color: white; border-top: 1px solid white;">Live Meeting All Right Reserved &copy; 2019</td>
            </tr>
        </table>
    </form>
</body>
</html>
