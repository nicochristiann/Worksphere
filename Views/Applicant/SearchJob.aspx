<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="SearchJob.aspx.cs" Inherits="Worksphere.Views.Applicant.SearchJob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Worksphere | Search Job</title>
    <link href="../../Style/Applicant/SearchJob.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="top">
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
                         <%for (var i = 0; i < count; i++){%>
                             <div class="jobs-container">
                                 <div class="upper">
                                     <img src="../../Assets/mixue.png" />
                                     <div class="title">
                                         <h3><%= workList[i].WorkTitle %></h3>
                                         <h5><%=workList[i].Employer.CompanyName %></h5>
                                     </div>
                                 </div>
                                 <div class="lower">
                                     <div class="lower-div">
                                         <img src="../../Assets/location.png" />
                                         <span><%=workList[i].Employer.CompanyAddress %></span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="../../Assets/card.png" />
                                         <span><%=workList[i].Salary %> / month</span>
                                     </div>
                                     <%-- ini paling link nya pake yg ?workId= --%>
                                     <%-- trs klo di klik di tampilin aja di div right --%>
                                 </div>
                                 <a href="/Views/Applicant/JobDetail.aspx/?id=<%=workList[i].WorkID %>">View Detail</a>
                              </div>
                         <%} %>
                     </div>
                 </div>
<%--                 <div class="right">
                     <div class="job-detail">
                         <div class="detail-container">
                             <div class="upper">
                                 <div class="upper-title">
                                     <img src="../../Assets/mixue.png" />
                                     <div class="title">
                                         <h3>Job Title</h3>
                                         <h4>Company Name</h4>
                                     </div>
                                 </div>
                                 <div class="upper-description">
                                     <div class="lower-div">
                                         <img src="../../Assets/location.png" />
                                         <span>Jakarta, Indonesia</span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="../../Assets/card.png" />
                                         <span>IDR 5,000,000 - 10,000,000 / month</span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="../../Assets/briefcase.png" />
                                         <span>Employment Type</span>
                                     </div>
                                     <div class="lower-div">
                                         <img src="../../Assets/building.png" />
                                         <span>Job Position</span>
                                     </div>
                                 </div>
                             </div>
                             <div class="lower">
                                 <h3>Job Description</h3>
                                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu, scelerisque scelerisque 
                                     id amet commodo tincidunt tellus. Id congue quam massa quis turpis phasellus donec 
                                     sit. Tincidunt dignissim quisque egestas nec non. Neque, gravida varius vulputate 
                                     vestibulum sed. Magna quis massa et, mauris, leo morbi lectus. Ipsum lacus dignissim 
                                     sapien amet, pretium egestas ullamcorper. Hendrerit sagittis, feugiat faucibus sed.
                                 </p>
                             </div>
                             <div class="apply">
                                 <asp:Button CssClass="btn" ID="Btn_Apply" runat="server" Text="APPLY NOW" OnClick="Button1_Click"/>
                             </div>
                         </div>
                     </div>
                 </div>--%>
             </div>
         </div>
     </div>
</asp:Content>
