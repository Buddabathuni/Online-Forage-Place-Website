<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="DisplayHallDetails.aspx.cs" Inherits="EventPortalManagement.DisplayHallDetails" %>

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
        <div class="gridbackgroundwhite">
            <div class="Clientgridbackgroundgray">
                <div class="formtitle">
                    Hall Details</div>
                <div class="leftfloat">
                    <asp:GridView ID="GVDisplayHallDetails" runat="server" AutoGenerateColumns="False"
                         PageSize="5"  CellPadding="4" ForeColor="#333333" GridLines="None" 
                        Width="680px" DataKeyNames="HallName,SeatingCapacity,EventType,NoOfWorkers" 
                        
                        onrowdatabound="GVDisplayHallDetails_RowDataBound">
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
                            <asp:TemplateField HeaderText="City" Visible="false" HeaderStyle-HorizontalAlign="Left">
                                <ItemStyle HorizontalAlign="left" />
                                <ItemTemplate>
                                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Place" Visible="false" HeaderStyle-HorizontalAlign="Left">
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
                                    <asp:LinkButton ID="lnkBook" runat="Server" Text="Book" ></asp:LinkButton>
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
                <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
            </div>
        </div>
    </center>
</asp:Content>
