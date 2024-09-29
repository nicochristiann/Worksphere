<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="AddJob.aspx.cs" Inherits="Worksphere.Views.Employer.AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/AddJob.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

        <h2>Add New Job</h2>

        <div class="addnewjob-detail">

            <div class="input-container">
                <asp:TextBox ID="TbJobName" runat="server" placeholder="Job Name" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblJobName" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>


            <div class="input-container">
                <asp:TextBox ID="TbJobDesc" runat="server" placeholder="Job Description" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblJobDesc" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="jobtype-salary-input">
                <div>
                    <asp:DropDownList ID="DDLJobType" placeholder="Job Type" runat="server" CssClass="ddl-input">
                        <asp:ListItem Value="Full-time">Full-time</asp:ListItem>
                        <asp:ListItem Value="Part-time">Part-time</asp:ListItem>
                        <asp:ListItem Value="Freelance">Freelance</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="LblJobType" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>

                <div>
                    <asp:TextBox ID="TbSalary" runat="server" placeholder="Salary" CssClass="salary-input"></asp:TextBox>
                    <asp:Label ID="LblSalary" runat="server" Text="" CssClass="label-error"></asp:Label>
                </div>
            </div>

            <div class="input-container">
                <asp:TextBox ID="TbKeyword" runat="server" placeholder="Keyword" CssClass="tb-input"></asp:TextBox>
                <asp:Label ID="LblKeyWord" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <div class="input-container">
                <asp:DropDownList ID="DDLJobCategory" placeholder="Job Category" runat="server" CssClass="ddl-input">
                    <asp:ListItem Value="Information and Technology">Information and Technology</asp:ListItem>
                    <asp:ListItem Value="Architecture">Architecture</asp:ListItem>
                    <asp:ListItem Value="Finance">Finance</asp:ListItem>
                    <asp:ListItem Value="Human Resource">Human Resource</asp:ListItem>
                    <asp:ListItem Value="Engineering">Engineering</asp:ListItem>
                    <asp:ListItem Value="Health and Medicine">Health and Medicin</asp:ListItem>
                    <asp:ListItem Value="Design">Design</asp:ListItem>
                    <asp:ListItem Value="Education">Education</asp:ListItem>
                    <asp:ListItem Value="Sports">Sports</asp:ListItem>
                    <asp:ListItem Value="Entertainment">Entertainment</asp:ListItem>
                    <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                    <asp:ListItem Value="Administration">Administration</asp:ListItem>
                    <asp:ListItem Value="Public Service">Public Service</asp:ListItem>
                    <asp:ListItem Value="Management">Management</asp:ListItem>
                    <asp:ListItem Value="Law">Law</asp:ListItem>
                    <asp:ListItem Value="Industry">Industry</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="LblJobCategory" runat="server" Text="" CssClass="label-error"></asp:Label>
            </div>

            <asp:Button ID="PostJob" runat="server" Text="Post Job" CssClass="button-postjob" OnClick="PostJob_Click" />

        </div>
    </section>
</asp:Content>
