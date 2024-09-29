<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeBeforeLogin.aspx.cs" Inherits="Worksphere.Views.HomeBeforeLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Worksphere</title>
    <link rel="stylesheet" href="~/Style/HomeBeforeLogin.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="true" />
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar">
            <div style="display: flex; align-items: center; gap: 10px;">
                <img src="/Assets/WhatsApp Image 2024-06-09 at 15.36.46_7f28876c.jpg" alt="Worksphere" class="worksphere-logo" />
                <asp:Button ID="Btn_Home" runat="server" Text="Home" CssClass="button-feature" OnClick="Btn_Home_Click" />
            </div>
            <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="button-feature" OnClick="BtnLogin_Click" />
        </div>
        <div class="register">
            <div class="container">
                <div class="top">
                    <h1>Join The Next Generation of Job Hunters & Upload Your CV Now!</h1>
                    <p>Increase your chances and let employers find you.</p>
                    <a href="Applicant/ApplicantRegister.aspx">Register For Free</a>
                </div>

                <div class="bottom">
                    <asp:TextBox ID="Txt_Keyword" runat="server" CssClass="txt-box" Placeholder="Keywords/Job Title"></asp:TextBox>
                    <asp:TextBox ID="Txt_Location" runat="server" CssClass="txt-box" Placeholder="Location"></asp:TextBox>
                    <asp:Button ID="Btn_Find" runat="server" Text="Find jobs" CssClass="btn-find" />
                </div>

            </div>
        </div>

        <div class="browse-jobs">
            <div class="browse-container">
                <h1>Browse Jobs</h1>
                <div class="jobs-navbar">
                    <button onclick="hideShowIndustry()" class="btn">Jobs by Industry</button>
                    <button onclick="hideShowLocation()" class="btn">Jobs by Location</button>
                    <button onclick="hideShowPopular()" class="btn">Popular Jobs</button>
                    <button onclick="hideShowCompany()" class="btn">Jobs by Company</button>
                </div>

                <div class="jobs-container">
                    <div id="jobs-industry">
                        <div class="industry">
                            <span>Accountant</span>
                            <span>Fire Fighter</span>
                            <span>Chef</span>
                            <span>Nurse</span>
                            <span>Teacher</span>
                        </div>
                        <div class="industry">
                            <span>Software Engineer</span>
                            <span>Biologist</span>
                            <span>Journalist</span>
                            <span>Financial Analyst</span>
                            <span>Lawyer</span>
                        </div>
                        <div class="industry">
                            <span>Detective</span>
                            <span>Police Officer</span>
                            <span>Judge</span>
                            <span>Musician</span>
                            <span>Zookeeper</span>
                        </div>
                        <div class="industry">
                            <span>Pilot</span>
                            <span>Video Editor</span>
                            <span>Novelist</span>
                            <span>Gym Trainer</span>
                            <span>Designer</span>
                        </div>
                    </div>

                    <div id="jobs-location">
                        <div class="location">
                            <span>Tangerang Selatan</span>
                            <span>Jakarta Utara</span>
                            <span>Jakarta Selatan</span>
                        </div>

                        <div class="location">
                            <span>Yogyakarta</span>
                            <span>Pekanbaru</span>
                            <span>Jayapura</span>
                        </div>

                        <div class="location">
                            <span>Solo</span>
                            <span>Cibaduyut</span>
                            <span>Aceh</span>
                        </div>

                        <div class="location">
                            <span>Medan</span>
                            <span>Depok</span>
                            <span>Denpasar</span>
                        </div>
                    </div>

                    <div id="jobs-popular">
                        <div class="popular">
                            <span>Data Scientist</span>
                            <span>Photographer</span>
                            <span>Judge</span>
                        </div>

                        <div class="popular">
                            <span>Flight Attendant</span>
                            <span>Office Manager</span>
                            <span>Sales Manager</span>
                        </div>

                        <div class="popular">
                            <span>Graphic Designer</span>
                            <span>Chef</span>
                            <span>Receptionist</span>
                        </div>
                    </div>

                    <div id="jobs-company">
                        <div class="company">
                            <span>Google</span>
                            <span>Amazon</span>
                            <span>Uber</span>
                            <span>Shopify</span>
                        </div>

                        <div class="company">
                            <span>Bank BCA</span>
                            <span>Shopee</span>
                            <span>Gojek</span>
                            <span>Tokopedia</span>
                        </div>

                        <div class="company">
                            <span>Smiling</span>
                            <span>Nike</span>
                            <span>Kimia Farma</span>
                            <span>Prudential</span>
                        </div>

                        <div class="company">
                            <span>McDonald</span>
                            <span>Bina Nusantara</span>
                            <span>Telkomsel</span>
                            <span>Indofood</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="featured-companies">
            <div class="companies-container">
                <h1>Featured Companies</h1>
                <div class="images">
                    <img src="/Assets/McDonald.png" />
                    <img src="/Assets/Tokopedia.png" />
                    <img src="/Assets/AW.png" />
                    <img src="/Assets/Prudential.png" />
                    <img src="/Assets/Nike.png" />
                    <img src="/Assets/Binus.png" />
                </div>
            </div>
        </div>

        <div class="how-we-work">
            <div class="work-container">
                <div class="left">
                    <h1>How We Work</h1>
                    <p>
                        At WorkSphere, we bridge the gap between job seekers and recruiters, 
                     simplifying the hiring process for both parties. Our platform utilizes 
                     cutting-edge technology to match qualified candidates with the right 
                     opportunities, ensuring a seamless and efficient recruitment experience. 
                     Join us and discover a smarter way to connect!
                    </p>
                    <a href="">Learn More</a>
                </div>
                <div class="right">
                    <img src="/Assets/how-we-work.jpg" />
                </div>
            </div>
        </div>

        <div class="recruiting">
            <div class="recruiting-container">
                <div class="left">
                    <h1>Recruiting?</h1>
                    <p>
                        “The secret to a successful hire is this: look for the people who want to change the world.” 
                     – Marc Benioff.
                    </p>
                </div>
                <div class="right">
                    <a href="Employer/RegisterEmployer.aspx">Start Recruiting Now!</a>
                </div>
            </div>
        </div>
    </form>
</body>
<script src="~/Script/HomeBeforeLoginScript.js"></script>
</html>
