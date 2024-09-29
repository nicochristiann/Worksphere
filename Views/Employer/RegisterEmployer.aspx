<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterEmployer.aspx.cs" Inherits="Worksphere.Views.Employer.RegisterEmployer1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Your Company</title>
    <link href="../../Style/Employer/RegisterEmployer.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <div style="display:flex; align-items:center; gap:10px;">
                <img src="/Assets/WhatsApp Image 2024-06-09 at 15.36.46_7f28876c.jpg" alt="Worksphere" class="worksphere-logo"/>
                <asp:Button ID="Btn_Home" runat="server" Text="Home" CssClass="button-feature" OnClick="Btn_Home_Click"/>
            </div>
            <asp:Button ID="Btn_Login" runat="server" Text="Login" CssClass="button-feature" OnClick="Btn_Login_Click"/>
        </div>
        <section class="container">

            <h2>Sign up as Employer</h2>

            <div class="register-detail">
                <h4>Register</h4>

                <div class="input-container">
                    <asp:TextBox ID="TbCompanyName" runat="server" placeholder="Company Name" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblCompanyName" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbEmail" runat="server" placeholder="Company Email Address" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblEmail" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbName" runat="server" placeholder="Name" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblName" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbPassword" runat="server" placeholder="Create Password (must contain at least 5 characters" CssClass="tb-input" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="LblPass" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbPhoneNumber" runat="server" placeholder="Phone Number" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblPhoneNumber" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbAddress" runat="server" placeholder="Company Address" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblAddress" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div class="input-container">
                    <asp:TextBox ID="TbType" runat="server" placeholder="Company Type" CssClass="tb-input"></asp:TextBox>
                    <asp:Label ID="LblType" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <asp:Button ID="BtnUpload" runat="server" Text="Upload Your Company Logo" CssClass="button-upload" />
                <asp:Button ID="BtnRegister" runat="server" Text="Register" class="button-register" OnClick="BtnRegister_Click" />
            </div>

            <asp:Button ID="BtnBack" runat="server" Text="Back to Login" class="button-back" OnClick="BtnBack_Click" />

        </section>
    </form>
</body>
</html>
