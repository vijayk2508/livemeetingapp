<%@ Page Language="C#" MasterPageFile="~/Registration/RegisterUser/MasterPage.master"
    AutoEventWireup="true" CodeFile="frmUserReply.aspx.cs" Inherits="Registration_RegisterUser_frmUserReply"
   %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" style=" padding: 16px; ">
            <tr>
                <td align="center" colspan="3" style="font-weight: bold; color: #ffffff">
                    
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Red" Width="300px"></asp:Label></td>
            </tr>
            <tr>
                <td align="right" colspan="3" style="font-weight: bold; color: black">
                    Separate each address with a comma</td>
            </tr>
            <tr>
                <td align="right" colspan="3" style="font-weight: bold; color: #ffffff">
                    </td>
            </tr>
            <tr>
                <td align="left" style="font-weight: bold; color: black">
                    From:</td>
                <td align="left">
                    <asp:TextBox ID="txtFrom" runat="server" Width="290px"></asp:TextBox></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" style="font-weight: bold; color: black">
                    To:</td>
                <td align="left">
                    <asp:TextBox ID="txtTo" runat="server" Width="290px" ValidationGroup="g1"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTo"
                        ErrorMessage="Require" Font-Bold="True" ForeColor="Maroon" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" style="font-weight: bold; color: black">
                    Subject:</td>
                <td align="left">
                    <asp:TextBox ID="txtSubject" runat="server" Width="290px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSubject"
                        ErrorMessage="Require" Font-Bold="True" ForeColor="Maroon" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
                <td align="left">
                </td>
            </tr>
            <tr>
                <td align="left" colspan="1">
                    <asp:LinkButton ID="lnkAttachment" runat="server" Font-Bold="True" ForeColor="Maroon"
                        OnClick="lnkAttachment_Click" Width="121px" CausesValidation="False">Add Attachment</asp:LinkButton></td>
                <td align="right" colspan="3">
                    <asp:CheckBox ID="chkSave" runat="server" Checked="True" Font-Bold="True" ForeColor="Maroon"
                        Text="Save Copy To Sent Folder" /></td>
            </tr>
            <tr>
                <td align="left" colspan="3" style="font-weight: bold; color: #ffffff">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                    <asp:LinkButton ID="lnkRemove" runat="server" ForeColor="Violet" Width="59px" Font-Bold="True"
                        OnClick="lnkRemove_Click" CausesValidation="False">Remove</asp:LinkButton></td>
            </tr>
            <tr>
                <td >
                </td>
            </tr>
            <tr>
                <td align="right" colspan="3" style="font-weight: bold; color: #ffffff;">
                    <asp:TextBox ID="txtMailMessage" runat="server" Height="239px" Width="540px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr>
                <td align="left" colspan="3">
                    <div style="text-align: left">
                        <table align="right" border="0" cellpadding="0" cellspacing="0" style=" width: 155px;padding: 5px;    padding-right: 0px; ">
                            <tr>
                                <td style="padding: 2px;">
                                    <asp:Button ID="ImgSend2" runat="server" Text="Send Mail" OnClick="ImgSend2_Click" /></td>
                                <td style="padding: 2px;">
                                    <asp:Button ID="ImgSave2" runat="server" Text="Save Draft" OnClick="ImgSave2_Click" ValidationGroup="g1" /></td>
                                <td>
                                    <asp:Button ID="ImgCancel2" runat="server" Text="Cancel"
                                        OnClick="ImgCancel2_Click" CausesValidation="False" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
