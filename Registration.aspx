<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs" Inherits="EventPortalManagement.Registration" %>
   
    <%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" TagPrefix="ajax" %>


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
                    New Registration</div>
                    <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblfullname" runat="server" Text="Full Name"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_fullname" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVfullname" ControlToValidate="txt_fullname" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblphonenumber" runat="server" Text="Phone Number"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_phonenumber" runat="server" onkeypress="AllowNumericCharacters(this)" MaxLength="10" CssClass="smalltextbox"> </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFVphonenumber" ControlToValidate="txt_phonenumber" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblEmail" runat="server" Text="Email ID"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_emailid" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVemailid" ControlToValidate="txt_emailid" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblpassword" runat="server" Text="Pasword"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_password" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVpassword" ControlToValidate="txt_password" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblconfirmpassword" runat="server" Text="Confirm Pasword"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_confirmpassword" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVconfirmpassword" ControlToValidate="txt_confirmpassword" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                    <asp:RadioButton ID="rb1"  Text="Male" runat="server" />
                   <asp:RadioButton ID="rb2"  Text="Female" runat="server" />
                        <%--<asp:RadioButtonList ID="gender_RadioButtonList" runat="server" RepeatDirection="Horizontal"
                        Width="164px" Font-Bold="True" 
                        onselectedindexchanged="gender_RadioButtonList_SelectedIndexChanged">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>--%>
                        <%--<asp:RadioButtonList ID="rbtnGender" runat="server" RepeatDirection="Horizontal"
                            Style="float: left">
                            <asp:ListItem Selected="True">Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>--%>

                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_dob" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <ajax:CalendarExtender ID="txt_dob_CalenderExtender" runat="server" PopupButtonID="btndob" PopupPosition="BottomLeft" 
                        TargetControlID="txt_dob"></ajax:CalendarExtender>
                       
                        <%--<ajax:calendarextender ID="txt_dob_CalendarExtender" runat="server" PopupButtonID="btndob"
                                PopupPosition="BottomLeft" TargetControlID="txt_dob">
                            </ajax:calendarextender>--%>
                            <asp:ImageButton ID="btndob" ImageUrl="Images/Calender.gif" Width="18px" Height="16px"
                                runat="server" CausesValidation="False" />
                                <asp:RequiredFieldValidator ID="RFVdob" ControlToValidate="txt_dob" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lbladdress" runat="server" Text="Address"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txt_address" runat="server" CssClass="smalltextbox"> </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFVaddress" ControlToValidate="txt_address" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblusertype" runat="server" Text="UserType"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_usertype" runat="server" CssClass="smalldropdown2">
                        <asp:ListItem>-- Please Select --</asp:ListItem>
                        <asp:ListItem>Customer</asp:ListItem>
                        <asp:ListItem>Owner</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVusertype" ControlToValidate="ddl_usertype" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <%--<div class="maindiv" runat="server">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblhintquestion" runat="server" Text="Hint Question"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_hintquestion" runat="server" CssClass="dropdown" 
                            AutoPostBack="true" 
                            onselectedindexchanged="ddl_hintquestion_SelectedIndexChanged">
                        <asp:ListItem>What is your favourite colour?</asp:ListItem>
                        <asp:ListItem>Favourite actor?</asp:ListItem>
                        <asp:ListItem>what is your first phone number?</asp:ListItem>
                        <asp:ListItem>dfsdfsdf</asp:ListItem>
                        <asp:ListItem>fgdsjfdfh</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>--%>
                <div class="buttonsave">
                    <asp:ImageButton ID="btnSignin" runat="server" ImageUrl="images/Submit.png" 
                        onclick="btnSignin_Click" />
                </div>
                <div class="buttonsave">
                    <asp:Label ID="lblregistrationmsg" runat="server" Text=" "></asp:Label>
                     <asp:Label ID="lblemailsent" runat="server" Text=" " ></asp:Label>
                </div>
            </div>
        </div>
    </center>
</asp:Content>
