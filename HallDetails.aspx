<%@ Page Title="" Language="C#" MasterPageFile="~/Owner.Master" AutoEventWireup="true"
    CodeBehind="HallDetails.aspx.cs" Inherits="EventPortalManagement.HallDetails" %>

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
    <script type = "text/javascript">
        function deleteSpecialChar(txtclientname) {
            if (txtclientname.value != '' && txtclientname.value.match(/^[\w ]+$/) == null) {
                txtclientname.value = txtclientname.value.replace(/[\W]/g, '');
            }
        }
        function AllowNumericCharacters() {
            if ((event.keyCode <= 47 || event.keyCode > 57)) event.returnValue = false;
        }
</script>
    <center>
        <div class="formbackgroundwhite">
            <div class="formbackgroundgray">
                <div class="formtitle">
                    Hall Details</div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblhallname" runat="server" Text="Hall Name"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                    <asp:TextBox ID="txt_hallname" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVHallName" ControlToValidate="txt_hallname" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblhallid" runat="server" Text="Hall ID"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                    <asp:TextBox ID="txt_hallid" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVHallID" ControlToValidate="txt_hallid" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                     <div  class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                         <asp:DropDownList ID="ddl_city" runat="server" CssClass="dropdown" autopostback="true"
                             onselectedindexchanged="ddl_city_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVCity" ControlToValidate="ddl_city" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div  class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lblplace" runat="server" Text="Place"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                         <asp:DropDownList ID="ddl_place" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVPlace" ControlToValidate="ddl_place" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblhalltimings" runat="server" Text="Hall Timings"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_halltimings" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVhalltimings" ControlToValidate="txt_halltimings" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblseatingcapacity" runat="server" Text="Seating Capacity"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_seatingcapacity" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVSeatingCapacity" ControlToValidate="txt_seatingcapacity" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div   class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lblstatus" runat="server" Text="Status"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                         <asp:DropDownList ID="ddl_status" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVStatus" ControlToValidate="ddl_status" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lbldimensions" runat="server" Text="Dimensions"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                         <asp:DropDownList ID="ddl_dimensions" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVdimensions" ControlToValidate="ddl_dimensions" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lbleventtype" runat="server" Text="Event Type"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                         <asp:DropDownList ID="ddl_eventtype" runat="server" CssClass="dropdown">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVeventtype" ControlToValidate="ddl_eventtype" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server" >
                    <div class="mainleftdiv">
                        <asp:Label ID="lblnoofworkers" runat="server" Text="No. Of Workers"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                       <asp:TextBox ID="txt_noofworkers" runat="server" CssClass="smalltextbox"> </asp:TextBox> 
                       <asp:RequiredFieldValidator ID="RFVnoofworkers" ControlToValidate="txt_noofworkers" ErrorMessage="*"
                            runat="server" ForeColor="Red" /> 
                    </div>
                </div>
                <div class="buttonsave">
                    <asp:ImageButton ID="btnSignin" runat="server" ImageUrl="images/Submit.png" 
                        onclick="btnSignin_Click"/>
                </div>
                <div class="buttonsave">
                    <asp:Label ID="Lblhalldetails" runat="server" Text=" "></asp:Label>
                </div>
            </div>
        </div>
    </center>
</asp:Content>
