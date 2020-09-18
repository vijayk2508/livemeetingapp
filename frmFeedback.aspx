<%@ Page Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true"
    CodeFile="frmFeedback.aspx.cs" Inherits="frmFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" border="0" cellpadding="2" cellspacing="2" width="800">
        <tr>
            <td align="center" colspan="3"></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: Black" width="6%">From:</td>
            <td align="left">
                <asp:TextBox ID="txtFrom" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFrom"
                    ErrorMessage="Require" Font-Bold="True"></asp:RequiredFieldValidator></td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: Black">To:</td>
            <td align="left">
                <asp:TextBox ID="txtTo" runat="server" Width="350px" ReadOnly="True"></asp:TextBox>
            </td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bold; color: Black">Subject:</td>
            <td align="left">
                <asp:TextBox ID="txtSubject" runat="server" Width="350px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSubject"
                    ErrorMessage="Require" Font-Bold="True"></asp:RequiredFieldValidator></td>
            <td align="left"></td>
        </tr>
        <tr>
            <td align="left" colspan="1">
                <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkAttachment_Click" Width="121px" CausesValidation="False">Add Attachment</asp:LinkButton></td>
            <td align="right" colspan="3"></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: Black">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                <asp:LinkButton ID="lnkRemove" runat="server" Font-Bold="True" ForeColor="Maroon"
                    OnClick="lnkRemove_Click" Width="59px" CausesValidation="False">Remove</asp:LinkButton></td>
        </tr>
        <tr>
            <td align="left" colspan="3" style="font-weight: bold; color: Black"></td>
        </tr>
        <tr>
            <td align="center" colspan="3" style="font-weight: bold; color: Black">
                <asp:TextBox ID="txtMailMessage" runat="server" Height="200px" Width="607px" TextMode="MultiLine"></asp:TextBox></td>
        </tr>
        <tr>
            <td align="left" colspan="3">
                <div style="text-align: right">
                    <table align="left" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr style="float: right;padding-right: 86px;">
                            <td width="6%" style=" padding-right: 6px;">
                                <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" /></td>
                            <td align="left">
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel"
                                    OnClick="btnCancel_Click" CausesValidation="False" /></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
