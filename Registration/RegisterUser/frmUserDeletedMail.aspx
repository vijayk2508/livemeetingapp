<%@ Page Language="C#" MasterPageFile="~/Registration/RegisterUser/MasterPage.master"
    AutoEventWireup="true" CodeFile="frmUserDeletedMail.aspx.cs" Inherits="Registration_RegisterUser_frmUserDeletedMail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .ibTop {
            background-color: black;
            text-align: -webkit-center;
            height: 28px;
        }

        .lnkBtn {
            color: white;
            text-decoration: none;
        }
    </style>

    <table align="left" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td align="left" style="background-color: black" valign="top" colspan="2">
                <table border="0" cellpadding="0" cellspacing="0" style=" width: 30%; ">
                    <tr class="ibTop">
                        <td style="width: 100px">
                            <asp:LinkButton ID="btnRestore" CssClass="lnkBtn" runat="server" OnClick="btnRestore_Click" Text="Restore" />
                        </td>
                        <td style="width: 100px">
                            <asp:LinkButton  ID="btnDelete" CssClass="lnkBtn" runat="server" OnClick="btnDelete_Click" Text="Delete Permanently" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center" style="font-weight: bold; font-size: 14pt; color: #ffcc66" valign="top">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="Red" Width="271px"></asp:Label>&nbsp; 
            </td>
        </tr>
    
        <tr>
            <td align="left" valign="top">
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" Font-Bold="True"
                    ForeColor="Black" OnCheckedChanged="CheckBox1_CheckedChanged" Text="Select All"
                    Width="113px" /></td>
        </tr>
        <tr>
           
            <td align="left" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td align="center" colspan="6">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="This Folder Is Empty" OnRowCommand="GridView1_RowCommand" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <EmptyDataRowStyle Font-Bold="True" Font-Size="Large" ForeColor="White" />
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="lblid" runat="server" Text='<%#Eval("Id") %>' Visible="false"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Select">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="chk1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="From">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl1" runat="server" Text='<%#Eval("From") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Subject">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl2" runat="server" Text='<%#Eval("Subject") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl3" runat="server" Text='<%#Eval("Date") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Size">
                                        <ItemTemplate>
                                            <asp:Literal ID="ltl4" runat="server" Text='<%#Eval("Size") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                                <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Left" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Left" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Left" />
                            </asp:GridView>
                        </td>
                    </tr>
                </table>

            </td>

        </tr>

    </table>
</asp:Content>
