<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="LoginPage.aspx.cs" Inherits="EventPortalManagement.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageContent" runat="server">
    <style type="text/css">
        /******************************************* Checkbox ************************************************/
        .chkRememberMe
        {
            width: 150px;
            margin-left: 100px;
            position: relative;
            height: 25px;
        }
        .chkRememberMe label
        {
            position: absolute;
            width: 20px;
            height: 20px;
            top: -1px;
            left: -1px;
            -border-radius: 4px;
            -webkit-box-shadow: inset 0px 1px 1px white, 0px 1px 3px rgba(0,0,0,0.5);
            -moz-box-shadow: inset 0px 1px 1px white, 0px 1px 3px rgba(0,0,0,0.5);
            box-shadow: inset 0px 1px 1px white, 0px 1px 3px rgba(0,0,0,0.5);
            background: #fcfff4;
            background: -webkit-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
            background: -moz-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
            background: -o-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
            background: -ms-linear-gradient(top, #fcfff4 0%, #dfe5d7 40%, #b3bead 100%);
            background: #fcfff4;
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#fcfff4', endColorstr='#b3bead',GradientType=0 );
        }
        
        .chkRememberMe label:after
        {
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
            filter: alpha(opacity=0);
            opacity: 0;
            content: '';
            position: absolute;
            width: 9px;
            height: 5px;
            background: transparent;
            top: 4px;
            left: 4px;
            border: 3px solid #333;
            border-top: none;
            border-right: none;
            -webkit-transform: rotate(-45deg);
            -moz-transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            transform: rotate(-45deg);
        }
        
        .chkRememberMe label:hover::after
        {
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=30)";
            filter: alpha(opacity=30);
            opacity: 0.5;
        }
        
        .chkRememberMe input[type=checkbox]:checked + label:after
        {
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)";
            filter: alpha(opacity=100);
            opacity: 1;
        }
        /****************************************************** Body *************************************************/
        body
        {
            background-repeat: no-repeat;
            background-position: center;
            background-attachment: fixed;
            font-size: .80em;
            font-family: "Helvetica Neue" , "Lucida Grande" , "Segoe UI" , Arial, Helvetica, Verdana, sans-serif;
            margin-top: 0px;
        }
        /********************************************** Logo *****************************************************/
        .logo
        {
            background-image: url(./images/forageplace.png);
            height: 80px;
            width: 960px;
            background-repeat: no-repeat;
        }
        /********************************************** Blue Line ***********************************************/
        .line
        {
            background: #3765AF;
            height: 5px;
            width: 959px;
        }
        
        .pagecontent
        {
            width: 960px;
            height: 400px;
            padding-top: 110px;
            text-align: center;
        }
        /********************************************** Form  background *********************************************/
        .formbackgroundgray
        {
            width: 150px;
            height: 250px;
            background: #e8ebeb; /* background color */
            float: left;
            border-radius: 5px 0px 0px 5px;
            -moz-border-radius: 5px 0px 0px 5px; /* Firefox */
            -webkit-border-radius: 5px 0px 0px 5px; /* Safari, Chrome */
            -khtml-border-radius: 5px 0px 0px 5px; /* KHTML */
        }
        .formbackgroundwhite
        {
            width: 450px;
            height: 250px;
            background: #fcfcfc; /* background color */
            border-radius: 5px; /*IE*/
            -moz-border-radius: 5px; /* Firefox */
            -webkit-border-radius: 5px; /* Safari, Chrome */
            -khtml-border-radius: 5px; /* KHTML */
        }
        /***************************************************** Textbox ***********************************************/
        .Bigtextbox
        {
            border: 1px solid #B4B4B4;
            -moz-border-radius: 5px; /* Firefox */
            -webkit-border-radius: 5px; /* Safari, Chrome */
            -khtml-border-radius: 5px; /* KHTML */
            border-radius: 5px; /* CSS3 */
            background-color: #F0F0F0;
            height: 25px;
            width: 200px;
        }
        .smalldropdown
        {
            border: 1px solid #B4B4B4;
            -moz-border-radius: 5px; /* Firefox */
            -webkit-border-radius: 5px; /* Safari, Chrome */
            -khtml-border-radius: 5px; /* KHTML */
            border-radius: 5px; /* CSS3 */ /*IE*/
            background-color: #F0F0F0; /* fallback color if gradients are not supported */
            height: 30px;
            width: 200px;
        }
        /****************************************** PRIMARY LAYOUT ELEMENTS *****************************************/
        .page
        {
            width: 960px;
            height: auto;
            margin: 0px auto 0px auto;
            background: #373E49;
        }
        
        .header
        {
            position: relative;
            height: 85px;
            top: 0px;
            width: 961px;
        }
        
        .header h1
        {
            font-weight: 700;
            margin: 0px;
            color: #f9f9f9;
            border: none;
            line-height: 2em;
            font-size: 2em;
        }
        /**************************************************** form design ***************************************************/
        .formtitle
        {
            height: 37px;
            text-align: center;
            width: 500px;
            font-weight: bold;
            padding-top: 20px;
        }
        .check
        {
            width: 360px;
            height: 31px;
            float: left;
        }
        .forgot
        {
            width: 490px;
            height: 31px;
            float: left;
        }
        .maindiv
        {
            width: 830px;
            height: 31px;
            float: left;
        }
        .mainleftdiv
        {
            width: 130px;
            float: left;
            height: 26px;
            margin-left: 0px;
            text-align: right;
        }
        .mainrightdiv
        {
            width: 600px;
            float: left;
            margin-left: 40px;
            text-align: left;
        }
        
        .buttonsave
        {
            width: 310px;
            height: 36px;
            text-align: right;
            float: left;
            margin-top: 12px;
        }
        /***************************************************** Footer *****************************************************/
        .footer
        {
            background-color: #005AA9;
            padding: 8px 0px 0px 0px;
            margin: 0px auto 0px auto;
            text-align: center;
            height: 20px;
            width: 960px;
        }
        .copywrite
        {
            font-size: 12px;
            color: white;
        }
    </style>
    <center>
        <div class="formbackgroundwhite">
            <div class="formbackgroundgray">
                <div class="formtitle">
                    Login</div>
                <div class="maindiv">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblUserName" Text="User Name" runat="server"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txtUserName" runat="server" CssClass="Bigtextbox" />
                        <asp:RequiredFieldValidator ID="rfvUserName" ControlToValidate="txtUserName" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv">
                    <div class="mainleftdiv">
                        <asp:Label ID="lblPassword" Text="Password" runat="server"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" 
                            CssClass="Bigtextbox" />
                        <asp:RequiredFieldValidator ID="rfvPassword" ControlToValidate="txtPassword" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="maindiv">
                    <div class="mainleftdiv">
                        <asp:Label ID="lbllogintype" Text="Login Type" runat="server"></asp:Label>
                    </div>
                    <div class="mainrightdiv">
                        <asp:DropDownList ID="ddl_logintype" runat="server" CssClass="smalldropdown2">
                            <asp:ListItem Selected="True">--Select--</asp:ListItem>
                            <asp:ListItem>Customer</asp:ListItem>
                            <asp:ListItem>Owner</asp:ListItem>
                            <asp:ListItem>Admin</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RFVlogintype" ControlToValidate="ddl_logintype" ErrorMessage="*"
                            runat="server" ForeColor="Red" />
                    </div>
                </div>
                <div class="check">
                    <asp:CheckBox ID="chkRememberMe" CssClass="chkRememberMe" Text=" " runat="server" />&nbsp;
                    Remember Me
                </div>
                <div class="buttonsave">
                    <asp:ImageButton ID="btnSignin" runat="server" ImageUrl="images/Submit.png" OnClick="btnSignin_Click" />
                </div>
                <div class="forgot">
                    <a id="A1" href="" runat="server" style="text-decoration: none;">Forgot Password?</a>
                </div>
                <div class="forgot">
                    <a id="A2" href="Registration.aspx" runat="server" style="text-decoration: none;">Register</a>
                </div>
                <div class="forgot">
                    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
                </div>
            </div>
        </div>
    </center>
</asp:Content>
