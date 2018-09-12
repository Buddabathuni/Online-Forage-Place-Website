<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true"
    CodeBehind="ClientOwnerView.aspx.cs" Inherits="EventPortalManagement.ClientOwnerView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
<style type="text/css">
        /********************************************** Logo *****************************************************/
        .logo
        {
            background-image: url(./images/forageplace.png);
            height: 80px;
            width: 960px;
            background-repeat: no-repeat;
        }
    </style>
    <center>
        <div class="formbackgroundwhite">
            <div class="formbackgroundgray">
                <div class="formtitle">
                    Client Owner View</div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblselect" runat="server" Text="Select"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_select" runat="server" CssClass="dropdown" 
                            onselectedindexchanged="ddl_select_SelectedIndexChanged">
                            <asp:ListItem Selected="True">--Select--</asp:ListItem>
                            <asp:ListItem>Owner</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="buttonsave">
                    <asp:ImageButton ID="btnSignin" runat="server" ImageUrl="images/Submit.png" />
                </div>
                <div class="leftfloat">
                    <asp:GridView ID="GVDisplayClientOwnerView" runat="server" AutoGenerateColumns="False"
                        PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" 
                        Width="680px" 
                        onselectedindexchanged="GVDisplayClientOwnerView_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />



                        <EditRowStyle Wrap="False" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="#005BAA" Font-Bold="True" ForeColor="White" />
                        <PagerSettings FirstPageText="First" LastPageText="Last" NextPageText="Next" PreviousPageText="Previous" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="right" />
                        <RowStyle Wrap="False" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </center>
</asp:Content>
