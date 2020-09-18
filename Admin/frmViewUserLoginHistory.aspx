<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmViewUserLoginHistory.aspx.cs" Inherits="Admin_frmViewUserLoginHistory"  %>

<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 90%">
        <tr>
            <td align="center" colspan="4" style="font-weight: bold; font-size: 13pt">
                User Login History</td>
        </tr>
        <tr>
            <td align="left">
                Select Date:</td>
            <td align="left">
                <cc1:gmdatepicker id="GMDatePicker1" runat="server"></cc1:gmdatepicker>
            </td>
            <td align="center" style="width: 100px; height: 19px">
                <strong>
                And</strong></td>
            <td align="left">
                <cc1:gmdatepicker id="GMDatePicker2" runat="server"></cc1:gmdatepicker>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Button ID="btnView" runat="server" OnClick="btnView_Click" Text="View" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="260px"></asp:Label></td>
        </tr>
        <tr>
            <td align="center" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    EmptyDataText="No Data Found" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5"
                    Width="582px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <Columns>
                        <asp:TemplateField HeaderText="Login Name">
                            <ItemTemplate>
                                <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("LoginName") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Login Date">
                            <ItemTemplate>
                                <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("LoginDate","{0:dd-MMM-yyyy}") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Login Time">
                            <ItemTemplate>
                                <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("LoginTime") %>'></asp:Literal>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataRowStyle Font-Bold="True" Font-Size="14pt" ForeColor="Red" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

