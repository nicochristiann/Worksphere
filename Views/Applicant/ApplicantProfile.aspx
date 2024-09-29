<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="ApplicantProfile.aspx.cs" Inherits="Worksphere.Views.Applicant.ApplicantProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Applicant/ApplicantProfile.css" rel="stylesheet"/>
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
                            <asp:Label ID="Name" CssClass="name" runat="server" Text="Name"></asp:Label>
                            <p class="brief-description">Full stack web developer</p>
                            <div class="major-container">
                                <img alt="LOGO" src="../../Assets/major-icon.png" class="icon"/>
                                <div class="major">Bachelors of Computer Science</div>
                            </div>
                        </div>
                        <div class="insert-button-container">
                            <asp:Button ID="InsertCVButton" CssClass="insert-button" runat="server" Text="Insert CV     +" />
                            <asp:Button ID="InsertPortofolioButton" CssClass="insert-button" runat="server" Text="Insert Portofolio     +" />
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="divider"></div>
                    <div class="identity-container-2">
                        <div class="row">
                            <img alt="ICON" src="../../Assets/clock-icon.png" class="icon"/>
                            <p class="row-title">Availability:</p>
                            <p class="availability">Available</p>
                        </div>
                        <div class="row">
                            <img alt="ICON" src="../../Assets/person-icon.png" class="icon"/>
                            <p class="row-title">Age, gender:</p>
                            <asp:Label ID="AgeGender" CssClass="row-info" runat="server" Text="Age, Gender"></asp:Label>
                        </div>
                        <div class="row">
                            <img alt="ICON" src="../../Assets/location-icon.png" class="icon"/>
                            <p class="row-title">Location:</p>
                            <p class="row-info">Jakarta, Indonesia</p>
                        </div>
                        <div class="row">
                            <img alt="ICON" src="../../Assets/calendar-icon.png" class="icon"/>
                            <p class="row-title">Years experience:</p>
                            <p class="row-info">1</p>
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
        <p class="profile-title">Profile</p><hr />
        <div class="mid-container">
            <div class="about-container">
                <h4 class="title">About</h4>
                <asp:Label ID="About" CssClass="about-text" runat="server" Text="Label"></asp:Label>
                <h4 class="title">Skills</h4>
                <ul class="skills-list">
                    <li class="skill-item">Tidur</li>
                    <li class="skill-item">Tidur</li>
                    <li class="skill-item">Tidur</li>
                </ul>
                <h4 class="title">Languages</h4>
                <div class="languages">
                    <div class="language-1">
                        <img src="../../Assets/id-flag.png" alt="FLAG" class="language-flag"/>
                        <p class="language-name">Bahasa Indonesia</p>
                    </div>
                    <div class="language-1">
                        <img src="../../Assets/uk-flag.png" alt="FLAG" class="language-flag"/>
                        <p class="language-name">English</p>
                    </div>
                    <div class="language-1">
                        <img src="../../Assets/fr-flag.png" alt="FLAG" class="language-flag"/>
                        <p class="language-name">French</p>
                    </div>
                </div>
            </div>
            <div class="contact-container">
                <h4 class="title">Contacts</h4>
                <div class="row">
                    <img class="contact-icon" src="../../Assets/phone-icon.png" alt="ICON"/>
                    <asp:Label ID="PhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                </div>
                <div class="row">
                    <img class="contact-icon" src="../../Assets/mail-icon.png" alt="ICON"/>
                    <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                </div>
                <div class="row">
                    <img class="contact-icon" src="../../Assets/line-logo.png" alt="ICON"/>
                    <p class="contact">budi_geming</p>
                </div>
                <h4 class="title">Referrals</h4>
                <div class="referral-container">
                    <div class="referral-picture">
                        <img src="../../Assets/profile-icon.png" alt="Profile"/>
                    </div>
                    <div class="referral-content">
                        <p class="referral-name">Cecep Gaming</p>
                        <p class="referral-brief-description">UI/UX Designer</p>
                        <p class="referral-message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum vitae dictumst sit vitae, mi imperdiet sit. Lectus eleifend aliquam nibh mauris, pretium. Lectus magnis lorem massa urna felis porta.</p>
                    </div>
                </div>
                <hr />
                <div class="referral-container">
                    <div class="referral-picture">
                        <img src="../../Assets/profile-icon.png" alt="Profile"/>
                    </div>
                    <div class="referral-content">
                        <p class="referral-name">Cecep Geming</p>
                        <p class="referral-brief-description">UI/UX Designer</p>
                        <p class="referral-message">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum vitae dictumst sit vitae, mi imperdiet sit. Lectus eleifend aliquam nibh mauris, pretium. Lectus magnis lorem massa urna felis porta.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
