<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="JobDetail.aspx.cs" Inherits="Worksphere.Views.Applicant.JobDetail" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Worksphere | Search Job Detail</title>
     <link href="/Style/Applicant/JobDetail.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="top" >
         <div class="top-container">
             <div class="find-jobs">
                 <asp:TextBox CssClass="txtbox" ID="Txt_Keyword" runat="server" placeholder="Keywords/Job title"></asp:TextBox>
                 <asp:TextBox CssClass="txtbox" ID="Txt_Location" runat="server" placeholder="Location"></asp:TextBox>
                 <asp:DropDownList CssClass="ddl" ID="DDL_Employment" runat="server">
                     <asp:ListItem Text="Employment Type" Value=""></asp:ListItem>
                 </asp:DropDownList>
                 <asp:DropDownList CssClass="ddl" ID="DDL_Salary" runat="server">
                     <asp:ListItem Text="Salary" Value=""></asp:ListItem>
                 </asp:DropDownList>
                 <asp:Button CssClass="btn" ID="Btn_Find" runat="server" Text="Find Jobs" OnClick="Btn_Find_Click"/>
             </div>
         </div>
     </div>

     <div class="bottom">
         <div class="bottom-container">
             <div class="job-found">
                 <h1>Jobs Found</h1>
                 <%-- tag buat count semua job yang ada --%>
                 <%--<h5><%= %></h5>--%>
                 <h5><%= count %>Jobs</h5>
             </div>
             <div class="all-jobs">
                 <div class="left">
                     <div class="jobs">
                         <%for (var i = 0; i < count; i++){
%>
                             <div class="jobs-container">
                                 <div class="upper">
                                     <img src="/Assets/mixue.png" />
                                     <div class="title">
                                         <h3><%=workList[i].WorkTitle %></h3>
                                         <h5><%= workList[i].Employer.CompanyName %></h5>
                                     </div>
                                 </div>
                                 <div class="lower">
                                     <div class="lower-div">
                                         <img src="/Assets/location.png" />
                                         <span><%= workList[i].Employer.CompanyAddress %></span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="/Assets/card.png" />
                                         <span><%= workList[i].Salary %> / month</span>
                                     </div>
                                     <%-- ini paling link nya pake yg ?workId= --%>
                                     <%-- trs klo di klik di tampilin aja di div right --%>
                                 </div>
                                 <a href="/Views/Applicant/JobDetail.aspx/?id=<%= workList[i].WorkID %>">View Detail</a>
                              </div>
                         <%} %>
                     </div>
                 </div>
                 <div class="right">
                     <div class="job-detail">
                         <div class="detail-container">
                             <div class="upper">
                                 <div class="upper-title">
                                     <img src="/Assets/mixue.png" />
                                     <div class="title">
                                         <h3><%= detail.WorkTitle %></h3>
                                         <h4><%= detail.Employer.CompanyName %></h4>
                                     </div>
                                 </div>
                                 <div class="upper-description">
                                     <div class="lower-div">
                                         <img src="/Assets/location.png" />
                                         <span><%= detail.Employer.CompanyAddress %></span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="/Assets/card.png" />
                                         <span>IDR <%= detail.Salary %> / month</span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="/Assets/briefcase.png" />
                                         <span><%= detail.WorkType %></span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="/Assets/building.png" />
                                         <span><%= detail.Category.CategoryName %></span>
                                     </div>
                                 </div>
                             </div>
                             <div class="lower">
                                 <h3>Job Description</h3>
                                 <p><%= detail.WorkDescription %>
                                 </p>
                             </div>
                             <div class="apply">
                                 <asp:Button CssClass="btn" ID="Btn_Apply" runat="server" Text="APPLY NOW" OnClick="Button1_Click"/>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>
</asp:Content>
