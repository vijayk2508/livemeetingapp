<%@ Page Language="C#" MasterPageFile="~/Registration/RegisterUser/MasterPage.master" AutoEventWireup="true" CodeFile="frmUserFeedback.aspx.cs" Inherits="Registration_RegisterUser_frmUserFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" border="0" cellpadding="2" cellspacing="2" style="width: 100%">
        <tr>
            <td align="left" style="font-weight: bold; color: black">From:</td>
            <td align="left">
                <asp:TextBox ID="txtFrom" runat="server" Width="400px"></asp:TextBox></td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black">To:</td>
            <td align="left">
                <asp:TextBox ID="txtTo" runat="server" Width="400px"></asp:TextBox></td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: black">Subject:</td>
            <td align="left">
                <asp:TextBox ID="txtSubject" runat="server" Width="400px"></asp:TextBox></td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" colspan="1">
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="121px">Add Attachment</asp:LinkButton></td>
            <td align="right" colspan="3"></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkRemove_Click" Width="59px">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: #ffffff; height: 19px"></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: #ffffff; height: 19px">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="239px" Width="513px" Font-Size="10pt" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="background-color: #f0f0e8">
                <div style="text-align: left">
                    <table align="left" border="0" cellpadding="0" cellspacing="0" style="width: 155px">
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="ImgSend2" runat="server" ImageUrl="~/images/SendMail.jpg" OnClick="ImgSend2_Click" /></td>
                            <td align="center">
                                <asp:ImageButton ID="ImgCancel2" runat="server" ImageUrl="~/images/CancelMail.jpg"
                                    OnClick="ImgCancel2_Click" /></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

