<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="EmployerProfile.aspx.cs" Inherits="Worksphere.Views.Employer.EmployerProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/EmployerProfile.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="top-with-logout">
            <div class="top-container">
                <div class="left">
                    <div class="profile-picture">
                        <img src="../../Assets/profile-icon.png" alt="Profile"/>
                    </div>
                    <div class="identity-container-1">
                        <div class="top">
                            <asp:Label ID="CompanyName" CssClass="name" runat="server" Text="Company Name"></asp:Label>
                            <asp:Label ID="Type" CssClass="brief-description" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="divider"></div>
                    <div class="identity-container-2">
                        <div class="row">
                            <img alt="ICON" src="../../Assets/mail-icon.png" class="icon"/>
                            <p class="row-title">Company Mail:</p>
                            <%--<p class="availability">Available</p>--%>
                            <asp:Label ID="Email" CssClass="row-info" runat="server" Text="Email"></asp:Label>
                        </div>
                        <div class="row">
                            <img alt="ICON" src="../../Assets/person-icon.png" class="icon"/>
                            <p class="row-title">Username:</p>
                            <asp:Label ID="Username" CssClass="row-info" runat="server" Text="Username"></asp:Label>
                        </div>
                        <div class="row">
                            <img alt="ICON" src="../../Assets/location-icon.png" class="icon"/>
                            <p class="row-title">Location:</p>
                            <p class="row-info">Jakarta, Indonesia</p>
                        </div>
                        <div class="row socials-row">
                            <img alt="ICON" src="../../Assets/linkedin-logo.png" class="icon"/>
                            <img alt="ICON" src="../../Assets/fb-logo.png" class="icon"/>
                            <img alt="ICON" src="../../Assets/x-logo.png" class="icon"/>
                            <img alt="ICON" src="../../Assets/github-logo.png" class="icon"/>
                        </div>
                    </div>
                </div>
            </div>
            <asp:Button ID="LogoutButton" CssClass="logout-button" runat="server" Text="Logout" OnClick="LogoutButton_Click" />
        </div>
    </div>
</asp:Content>
