<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="WelcomePage.aspx.cs" Inherits="EventPortalManagement.WelcomePage" %>

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
    <p>
        Welcome To FORAGE PLACE...!!</p>
    <p>
        FORAGE PLACE is a place where you can search your destination location for your
        memorable occation....!!</p>
    <p>
        This website consist of different hall locations along with its specification.User
        can login into the website and check for the different halls available for their
        location.</p>
    <p>
        In this website the owener of the halls can update about their specifications of
        the hall by loging in as a customer.
    </p>
    <a href="LoginPage.aspx">Login</a>
</asp:Content>
