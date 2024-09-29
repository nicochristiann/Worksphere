<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="HomeEmployer.aspx.cs" Inherits="Worksphere.Views.Employer.HomeEmployer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Employer/HomeEmployer.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="header">
        <div class="header-container">
            <div class="left">
                <h1>Want to add your jobs to our site?</h1>
                <p>Publish job opportunities to find potential workers</p>
                 <asp:Button ID="Btn_AddJob_HomeEmployer" runat="server" Text="Add Job" CssClass="button-addjob" OnClick="Btn_AddJob_HomeEmployer_Click" />
            </div>
            <div class="right">
                <img src="/Assets/header-img.png" />
            </div>
        </div>
    </div>

    <%--<section class="container">
        <div class="header">
            <h2>Want to add your jobs to our site?</h2>
            <h6>Publish job opportunities to find potential workers</h6>
            <asp:Button ID="Btn_AddJob_HomeEmployer" runat="server" Text="Add Job" OnClick="Btn_AddJob_HomeEmployer_Click" />
        </div>
    </section>--%>
        <h2>Jobs Added</h2>
    <section class="isi">
        <% int i = 0; foreach(var w in workList)
            { %>
            <%workID = w.WorkID; %>
            <div class="job-list">
                <div class="job-item">
                    <div class="icon-container">
                        <asp:Image ID="image" runat="server" class="image" />
                        <div>
                            <p><%= w.Employer.CompanyAddress %></p>
                            <p>IDR <%= w.Salary %>/ month</p>
                            <p> <%= w.WorkType %></p>
                        </div>
                    </div>
                    <br />
                    <div class="job-description">
                        <h4 class="job-title"><%= w.WorkTitle %></h4>
                        <h5>Company: <%= w.Employer.CompanyName %></h5>
                    </div>
                    <div class="job-description">
                        <h4 class="job-title">Job Description</h4>
                        <h5 class="detail"><%= w.WorkDescription %></h5>
                    </div>
                    <div class="job-description">
                        <a href="/Views/Employer/ViewApplicant.aspx/?id=<%= w.WorkID %>">View Detail</a>
                    </div>
                    <div class="footer">
                        <span class="footer-text" style="float: left;">Application Deadline in 12 May</span>
                        <span class="footer-text" style="float: right;"><%=cateName2[i] %></span>
                    </div>
                </div>
            </div>
        <%
                i++;
            } %>
    </section>
</asp:Content>
