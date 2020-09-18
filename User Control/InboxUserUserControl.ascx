<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InboxUserUserControl.ascx.cs" Inherits="User_Control_InboxUserUserControl" %>
<table border="0" cellpadding="0" cellspacing="0" align="center" style="width: 72%">
    <tr>
        <td align="center" colspan="6" valign="top">
            <asp:Menu ID="Menu1" runat="server" BackColor="#F0F0E8" Orientation="Horizontal"
                Width="742px" Height="1px">
                <Items>
                    <asp:MenuItem ImageUrl="" Text="Reply" ToolTip="Reply"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Text="Reply All" ToolTip="Reply All"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Text="Forwrd" ToolTip="Reply All"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Text="Print" ToolTip="Reply All"></asp:MenuItem>
                    <asp:MenuItem ImageUrl="" Text="Delete" ToolTip="Reply All"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </td>
           </tr>
</table>
