<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="CommunityPage.aspx.cs" Inherits="Worksphere.Views.Applicant.CommunityPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Worksphere</title>
    <link rel="stylesheet" href="/Style/Applicant/CommunityStyle.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
        <div class="left">
            <div class="left-container">
                <div class="top-user">
                    <h2><span>Top</span> Feeders</h2>
                    <div class="names-container">
                        <% for (var i = 1; i <= 5; i++)
                            { %>
                            <div class="names">
                                <h4>Username <%= i %></h4>
                                <p>3000 Feeds</p>
                            </div>
                        <%} %>
                    </div>
                </div>

                <div class="trending-companies">
                    <h2><span>Trending </span>Companies</h2>
                    <div class="companies-container">
                        <div class="companies">
                            <h4><span>#1</span> Dji Sam Soe🔥</h4>
                        </div>
                        <div class="companies">
                            <h4><span>#2</span> Mixue🍦</h4>
                        </div>
                        <div class="companies">
                            <h4><span>#3</span> Aqua💧</h4>
                        </div>
                    </div>
                </div>

                <div class="hot-question">
                    <h2><span>HOT </span>Questions🔥</h2>
                    <div class="hot-container">
                        <div class="question">
                            <div class="image">
                                <img src="../../Assets/arrow_circle_right.png" />
                            </div>
                            <span>What are the key factors you consider when deciding to accept a job offer?</span>
                        </div>
                        <div class="question">
                            <div class="image">
                                <img src="../../Assets/arrow_circle_right.png" />
                            </div>
                            <span>What do you consider when evaluating a company’s culture and values?</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="vertical-line"></div>

        <div class="right">
            <div class="hello">
                <h2>Hello, <span><%= name%></span></h2>
                <p>What's up with you? Would you like to share something with our community?&#128522</p>
            </div>
            <div class="right-container">
                <div class="form">
                    <div class="post">
                        <h3>Create a post</h3>
                    </div>
                    <div id="form1">
                        <asp:TextBox CssClass="txtbox" ID="Txt_Box" runat="server" placeholder="Share your story!"></asp:TextBox>
                        <asp:Button CssClass="btn" ID="Btn_Post" runat="server" Text="Post" OnClick="Btn_Post_Click"/>
                    </div>
                </div>
                <% foreach (var c in communityList) { %>
                    <div class="feeds">
                        <div class="feeds-container">
                            <div class="user">
                                <img src="../../Assets/user.png" />
                                <%if (c.ApplicantID != null) { %>

                                    <span><%= c.Applicant.Name %></span>

                                <%} else {  %>

                                    <span><%= c.Employer.UserName %></span>

                                <%} %>
                                
                            </div>
                            <div class="content">
                                <p>
                                   <%= c.Description %>
                                </p>
                            </div>
                         </div>
                    </div>
                <%} %>
            </div>
        </div>

    </div>
</asp:Content>
