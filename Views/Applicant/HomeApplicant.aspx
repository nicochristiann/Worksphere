<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="HomeApplicant.aspx.cs" Inherits="Worksphere.Views.Applicant.HomeApplicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Worksphere</title>
    <link rel="stylesheet" href="/Style/Applicant/HomeApplicant.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header">
        <div class="header-container">
            <div class="left">
                <h1>Having trouble with your job seeking process?</h1>
                <p>Gain insights and have a discussion with our community to answer your questions and worries</p>
                <a href="/Views/Applicant/CareerAdvice.aspx">Career Advice</a>
            </div>
            <div class="right">
                <img src="/Assets/header-img.png" />
            </div>
        </div>
    </div>

    <div class="popular-companies">
        <div class="popular-container">
            <div class="title">
                <h1>Popular Companies</h1>
                <a href="">
                    <div class="view-all">
                        <span>View all companies</span>
                        <img src="/Assets/Arrow.png"/>
                    </div>
                </a>
            </div>
            <%-- Ini kalo mau kek sesuai dari database --%>
            <%--<%foreach (var x in )
            { %>
                <div class="box">
                    <div class="box-container">
                        <div class="top">
                            <div class="image"><img src=""/></div>
                            <div class="description">
                                <p><%= %></p>
                                <h1><%= %></h1>
                                <h2><%= %> Jobs</h2>
                                <img src=""/><span><%= %></span>
                            </div>
                        </div>
                        <div class="bottom">
                            <img src=""/> <span><%= %></span>
                            <img src=""/> <span><%= %></span>
                            <img src=""/> <span><%= %></span>
                        </div>
                    </div>
                </div>
            <% } %>--%>
            <div class="box">
                <div class="box-container">
                    <div class="top">
                        <div class="image">
                            <img src="/Assets/mixue.png" />
                        </div>
                        <div class="description">
                            <h1>MIXUE</h1>
                            <h2>PT Mixue Sejahtera</h2>
                            <p>13 Jobs</p>
                            <div class="star">
                                <img src="/Assets/star.png" /><span>4.5</span>
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="bottom-div">
                            <img src="/Assets/location.png" /><span>Jakarta, Indonesia</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/work.png" /><span>Business Consulting</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/people.png" /><span>5-10</span>
                        </div>
                    </div>
                </div>
                <div class="box-container">
                    <div class="top">
                        <div class="image">
                            <img src="/Assets/mixue.png" />
                        </div>
                        <div class="description">
                            <h1>MIXUE</h1>
                            <h2>PT Mixue Sejahtera</h2>
                            <p>13 Jobs</p>
                            <div class="star">
                                <img src="/Assets/star.png" /><span>4.5</span>
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="bottom-div">
                            <img src="/Assets/location.png" /><span>Jakarta, Indonesia</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/work.png" /><span>Business Consulting</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/people.png" /><span>5-10</span>
                        </div>
                    </div>
                </div>
                <div class="box-container">
                    <div class="top">
                        <div class="image">
                            <img src="/Assets/mixue.png" />
                        </div>
                        <div class="description">
                            <h1>MIXUE</h1>
                            <h2>PT Mixue Sejahtera</h2>
                            <p>13 Jobs</p>
                            <div class="star">
                                <img src="/Assets/star.png" /><span>4.5</span>
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="bottom-div">
                            <img src="/Assets/location.png" /><span>Jakarta, Indonesia</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/work.png" /><span>Business Consulting</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/people.png" /><span>5-10</span>
                        </div>
                    </div>
                </div>
                <div class="box-container">
                    <div class="top">
                        <div class="image">
                            <img src="/Assets/mixue.png" />
                        </div>
                        <div class="description">
                            <h1>MIXUE</h1>
                            <h2>PT Mixue Sejahtera</h2>
                            <p>13 Jobs</p>
                            <div class="star">
                                <img src="/Assets/star.png" /><span>4.5</span>
                            </div>
                        </div>
                    </div>
                    <div class="bottom">
                        <div class="bottom-div">
                            <img src="/Assets/location.png" /><span>Jakarta, Indonesia</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/work.png" /><span>Business Consulting</span>
                        </div>
                        <div class="bottom-div">
                            <img src="/Assets/people.png" /><span>5-10</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="services">
        <div class="services-container">
            <div class="top">
                <h1>Services</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum vitae dictumst sit vitae, mi imperdiet sit. Lectus eleifend aliquam nibh mauris, pretium. Lectus magnis lorem massa urna felis porta.</p>
            </div>
            <div class="bottom">
                <div class="box">
                    <div class="box-container-green">
                        <div class="left">
                            <h2>Career Advice</h2>
                            <img class="arrow" src="/Assets/Arrow-White.png"/>
                        </div>
                        <img class="right-img" src="/Assets/career-img.png" />
                    </div>
                </div>
                <div class="box">
                    <div class="box-container-white">
                        <div class="left">
                            <h2>Search Jobs</h2>
                            <img class="arrow" src="/Assets/Arrow-Green.png" />
                        </div>
                        <img class="right-img" src="/Assets/search-img.png" />
                    </div>
                </div>
                <div class="box">
                    <div class="box-container-white">
                        <div class="left">
                            <h2>Community</h2>
                            <img class="arrow" src="/Assets/Arrow-Green.png" />
                        </div>
                        <img class="right-img" src="/Assets/community-img.png" />
                    </div>
                </div>
                <div class="box">
                    <div class="box-container-green">
                        <div class="left">
                            <h2>Upload CV</h2>
                            <img class="arrow" src="/Assets/Arrow-White.png" />
                        </div>
                        <img class="right-img" src="/Assets/upload-img.png" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="popular-job">
        <div class="jobs-container">
            <div class="top">
                <h1>Popular Job Industries</h1>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Bibendum vitae dictumst 
                    sit vitae, mi imperdiet sit. Lectus eleifend aliquam nibh mauris, pretium. 
                    Lectus magnis lorem massa urna felis porta.
                </p>
            </div>
            <div class="bottom">
                <div class="bottom-container">
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/banking.png" />
                        </div>
                        <div class="description">
                            <span>Banking</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/finance.png" />
                        </div>
                        <div class="description">
                            <span>Finance</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/human.png" />
                        </div>
                        <div class="description">
                            <span>Human Resources</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/computer.png" />
                        </div>
                        <div class="description">
                            <span>Computer & Information</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/energy.png" />
                        </div>
                        <div class="description">
                            <span>Energy</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic">
                            <img src="/Assets/pharmacy.png" />
                        </div>
                        <div class="description">
                            <span>Pharmacy</span>
                            <img src="/Assets/Arrow.png" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
</asp:Content>
