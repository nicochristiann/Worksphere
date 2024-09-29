<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="ViewApplicant.aspx.cs" Inherits="Worksphere.Views.Employer.ViewApplicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="/Style/Employer/ViewApplicant.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Title">
        <h1>Applicants</h1>
    </div>
    
    <div class="Table">    
        <table class="table-applyment">
            <tr>
                <th>Photo</th>
                <th>Applicant Name</th>
                <th>Age</th>
                <th>Application Date</th>
                <th>Status</th>
                <th>Portofolio</th>
                <th>Action</th>
            </tr>
            <% foreach(var d in listApplicant)
            {%>
                <tr>
                    <td><%= d.Applicant.ProfilePicture %></td>
                    <td><%= d.Applicant.Name %></td>
                    <td><%= d.Applicant.Age %></td>
                    <td><%= d.ApplyDate %></td>
                    <td><%= d.Status %></td>
                    <td> <button></button> </td>
                    <td>
                        <asp:Button ID="BtnAccept" runat="server" Text="Accept" OnClick="BtnAccept_Click" CssClass="btnAccept"/>
                        <asp:Button ID="BtnReject" runat="server" Text="Reject" OnClick="BtnReject_Click" CssClass="btnReject" />
                    </td>
                </tr>
            <%
            } %>
        </table>

<%--        <asp:Table ID="Table" runat="server">
            <asp:TableHeaderRow>
                <asp:TableCell>Photo</asp:TableCell>
                <asp:TableCell>Applicant Name</asp:TableCell>
                <asp:TableCell>Age</asp:TableCell>
                <asp:TableCell>Location</asp:TableCell>
                <asp:TableCell>Application Date</asp:TableCell>
                <asp:TableCell>Status</asp:TableCell>
                <asp:TableCell>Portofolio</asp:TableCell>
                <asp:TableCell>View Profile</asp:TableCell>
            </asp:TableHeaderRow>

            <asp:TableRow>
                <asp:TableCell ID="photo"></asp:TableCell>
                <asp:TableCell ID="name"></asp:TableCell>
                <asp:TableCell ID="age"></asp:TableCell>
                <asp:TableCell ID="location"></asp:TableCell>
                <asp:TableCell ID="date"></asp:TableCell>
                <asp:TableCell ID="status"></asp:TableCell>
                <asp:TableCell ID="porto"></asp:TableCell>
                <asp:TableCell ID="profile">
                    <asp:Button ID="Button1" runat="server" Text="Profile" class="Btn-profile"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>--%>
    </div>

</asp:Content>
