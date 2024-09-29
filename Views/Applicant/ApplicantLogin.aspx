<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplicantLogin.aspx.cs" Inherits="Worksphere.Views.Applicant.ApplicantLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Style/Applicant/LoginApplicant.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <div style="display:flex; align-items:center; gap:10px;">
                <img src="/Assets/WhatsApp Image 2024-06-09 at 15.36.46_7f28876c.jpg" alt="Worksphere" class="worksphere-logo"/>
                <asp:Button ID="Btn_Home" runat="server" Text="Home" CssClass="button-feature" OnClick="Btn_Home_Click"/>
            </div>
            <asp:Button ID="Btn_Login_Header" runat="server" Text="Login" CssClass="button-feature" OnClick="Btn_Login_Header_Click"/>
        </div>
        <div>
            <section class="container">
                <div class="login-head">
                    <div class="login-text">
                        Login
                    </div>

                    <div class="recruiter-login-text">
                        <a href="../Employer/LoginEmployer.aspx" class="login-employer-link">Recruiter Login</a>
                    </div>
                </div>

                <div class="login-detail">
                    <div class="login-input">
                        <asp:TextBox ID="TbEmail" runat="server" placeholder="Email Address" class="textbox-email"></asp:TextBox>
                        <asp:TextBox ID="TbPassword" runat="server" placeholder="Password" class="textbox-password" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="LblError" runat="server" Text="" CssClass="label-error"></asp:Label>
                        <a href="#" class="forgot-link">Forgot your Password?</a>
                        <asp:Button ID="BtnLogin" runat="server" Text="Login" class="button-login" OnClick="BtnLogin_Click" />
                    </div>

                    <div class="login-register">
                        <p class="register-text">Not Registered?</p>
                        <p class="feature-text">Search & Apply</p>
                        <p class="feature-text">Job Alerts</p>
                        <p class="feature-text">Free CV Review</p>
                        <asp:Button ID="ButtonRegister" runat="server" Text="Register" class="button-register" OnClick="ButtonRegister_Click" />
                    </div>
                </div>

            </section>
        </div>
    </form>
</body>
</html>
