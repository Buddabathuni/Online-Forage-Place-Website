<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="ClientRequirement.aspx.cs" Inherits="EventPortalManagement.ClientRequirement" %>

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
                    User Requirement</div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_city" runat="server" CssClass="dropdown" OnSelectedIndexChanged="ddl_city_SelectedIndexChanged"
                            AutoPostBack="true">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblplace" runat="server" Text="Place"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_place" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_eventtype" runat="server" CssClass="dropdown">
                            <asp:ListItem>--Please Select--</asp:ListItem>
                            <asp:ListItem>Wedding</asp:ListItem>
                            <asp:ListItem>Office</asp:ListItem>
                            <asp:ListItem>Function Hall</asp:ListItem>
                            <asp:ListItem>jsdakj</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lbldate" runat="server" Text="Date"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_date" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                    </div>
                </div>
                <div class="buttonsave">
                    <asp:ImageButton ID="btnSignin" runat="server" ImageUrl="images/Submit.png" />
                </div>
                <div class="leftfloat">
                    <asp:GridView ID="GVDisplayHallDetails" runat="server" AutoGenerateColumns="False"
                        PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" Width="680px"
                        DataKeyNames="HallName,SeatingCapacity,EventType,NoOfWorkers">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <%--<asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <asp:Label ID="lblClientid" runat="server" Text='<%#Eval("ClientID")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="S No." HeaderStyle-HorizontalAlign="Center">
                                <ItemStyle HorizontalAlign="Center" />
                                <ItemTemplate>
                                    <asp:Label ID="lblSerial" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="HallName" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblHallName" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="City" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Place" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblPlace" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Seating Capacity" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblSeatingCapacity" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Event  Type" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblEventType" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="No Of Workers" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblNoOfWorkers" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:TemplateField HeaderText="" ShowHeader="False" HeaderStyle-HorizontalAlign="center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkView" runat="Server" Text="View" OnClick="View" Visible="false"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>--%>
                            <asp:TemplateField HeaderText="Action" ShowHeader="False" HeaderStyle-HorizontalAlign="center">
                                <ItemTemplate>
                                    <asp:LinkButton ID="lnkBook" runat="Server" Text="Book"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
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
