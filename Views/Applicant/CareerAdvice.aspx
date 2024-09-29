<%@ Page Title="" Language="C#" MasterPageFile="~/Navbar.Master" AutoEventWireup="true" CodeBehind="CareerAdvice.aspx.cs" Inherits="Worksphere.Views.Applicant.CareerAdcive" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../Style/Applicant/CareerAdvice.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="container">

        <h2>Career Advice</h2>

        <div class ="Advice">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu, scelerisque scelerisque id amet commodo tincidunt tellus. Id congue quam massa quis turpis phasellus donec sit. Tincidunt dignissim quisque egestas nec non. Neque, gravida varius vulputate vestibulum sed. Magna quis massa et, mauris, leo morbi lectus. Ipsum lacus dignissim sapien amet, pretium egestas ullamcorper. Hendrerit sagittis, feugiat faucibus sed.

            Sed sit vitae metus sed aliquam nam. Sed proin sed tortor sed. Risus ipsum massa ultrices aenean ridiculus aliquam scelerisque eget. Et nec, est semper aliquam quisque sapien leo et dui. Congue ultrices nulla blandit lorem. Accumsan, dictum viverra enim scelerisque nullam interdum volutpat massa curabitur.
        </p>
        </div>

        <div class="CVtips">
            <h3>CV tips - Create Your First CV!</h3>

          
                <div class="column">
                    <a href="https://www.indeed.com/career-advice/resumes-cover-letters/how-to-write-a-cv">
                        <img src="https://images.ctfassets.net/pdf29us7flmy/bd23f9bf-4446-54a7-9aad-0b019afa0d54/21cb768d4349f12d13f523dd76396f63/resized.jpg?w=1440&q=100&fm=avif">
                    </a>

                    <a href="https://www.indeed.com/career-advice/resumes-cover-letters/how-to-write-a-cv">
                        <img src="https://images.ctfassets.net/pdf29us7flmy/bd23f9bf-4446-54a7-9aad-0b019afa0d54/21cb768d4349f12d13f523dd76396f63/resized.jpg?w=1440&q=100&fm=avif">
                    </a>

                    <a href="https://www.indeed.com/career-advice/resumes-cover-letters/how-to-write-a-cv">
                        <img src="https://images.ctfassets.net/pdf29us7flmy/bd23f9bf-4446-54a7-9aad-0b019afa0d54/21cb768d4349f12d13f523dd76396f63/resized.jpg?w=1440&q=100&fm=avif">
                    </a>

                    <a href="https://www.indeed.com/career-advice/resumes-cover-letters/how-to-write-a-cv">
                        <img src="https://images.ctfassets.net/pdf29us7flmy/bd23f9bf-4446-54a7-9aad-0b019afa0d54/21cb768d4349f12d13f523dd76396f63/resized.jpg?w=1440&q=100&fm=avif">
                    </a>
                </div>
            </div>

        <div class="interview-prep">
                <h3>Interview prep</h3>

            <div class="main-container">

                <div class="container1">
                    <h4>Common Questions</h4>
                    <div class="questions">
                        <p>
                            Tell me about yourself?
                        </p>
                    </div>

                    <div class="redirect-button">
                        <p>Want to discover more questions like this?</p>
                        <asp:Button ID="ButtonStart" runat="server" Text="Start" class="button-start" />
                    </div>

                    <div class="illustration">
                        <img src="/SE ILLUSTRATIONS/The Little Things Home Office.png">
                    </div>
                </div>

                <div class="container2">
                    <h4>Answered by our community!</h4>
                </div>

            </div>

        </div>
          
    </section>
</asp:Content>
