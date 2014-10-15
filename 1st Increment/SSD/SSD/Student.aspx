<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="SSD.Student" %>

<html>
<head>
    <title>SSD - Student Services</title>
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />

    <link href="Styles/coda-slider.css" rel="stylesheet" type="text/css" charset="utf-8" />

    <script src="js/jquery-1.2.6.js" type="text/javascript"></script>
<script src="js/jquery.scrollTo-1.3.3.js" type="text/javascript"></script>
<script src="js/jquery.localscroll-1.2.5.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.serialScroll-1.2.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/coda-slider.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
    <div id="inner">
    <div id="header">
    	<h1><a href="Default.aspx"><image src="images/umkc_logo.png" height=55px ></image></a></h1>
        <h2>Services for Students with Disabilities</h2>
             
        <div class="clear"></div>
    </div>
    <div id="nav">
    	<ul>
        	<li><a href="Default.aspx">Home</a></li>
            <li><a href="Aboutus.aspx">About</a></li>
            <li><a href="Services.aspx">Services</a></li>
            <li><a href="Contactus.aspx">Contact Us</a></li>
        </ul>
    </div>
    <br />
    <div style="align:left;"><a href="Default.aspx" style="text-decoration:none; color:Blue;">Home -> </a>Student Services</div><br />

    <div id="slider">
    <div id="tooplate_wrapper">
    
    <div style="width:960px;height:700px;">
    <div style="width:300px;height:700px; float:left;">
    
    <div id="tooplate_sidebar">
    <div id="menu">
                <ul class="navigation">
                    <li><a href="#about" class="selected menu_01">Student Login</a></li>
                    <li><a href="#home" class="menu_02">Student Registration</a></li>
                    <li><a href="#resp" class="menu_03">Student Responsibilities</a></li>
                    <li><a href="#faq" class="menu_04">FAQ's with Answers</a></li>
                </ul>
            </div>
            </div>
    </div>
    <div style="width:654px;height:700px;float:right; border:2px solid black;">
        <div id="content" style="height:700px; float:none; width:650px;">
            <div class="scroll" style="height:650px; width:650px; ">
                <div class="scrollContainer" style="height:700px;">

        <div class="panel" id="about">
        <h4 style="color:Blue;">Already have an Account, Login here to Access the Services</h4>
        <table>
<tr>
<td style="border-width:0px">&nbsp;</td>
</tr>
<tr style="border-width:0px;">
    <td style="border-width:0px;"><font style="font-family:Calibri; font-style:italic; font-size:large;"><b>Username</b></font></td><td style="border-width:0px;">:</td><td style="border-width:0px;">
    <asp:TextBox runat="server" ID="un"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="un"
                ErrorMessage="Please Enter Username" ForeColor="Red" Font-Size="Small" Display="Dynamic" ></asp:RequiredFieldValidator>
    </td>
</tr>
<tr>
    <td style="border-width:0px;"><font style="font-family:Calibri; font-style: italic; font-size: large;"><b>Password</b></font></td><td style="border-width:0px;">:</td><td style="border-width:0px;">
    <asp:TextBox  runat="server" ID="pw" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pw"
                ErrorMessage="Please Enter Password" ForeColor="Red" Font-Size="Small" Display="Dynamic" ></asp:RequiredFieldValidator>
    </td>
</tr>
            
<tr><td colspan="3" style="border-width:0px;"> &nbsp </td></tr>
<tr>
<td colspan="3" style="border-width:0px;"><center>
    <asp:Button ID="btnlogin" runat="server" Text="Login" Font-Size="Large"
         Height="35px" Width="110px" /></center></td>
</tr>
<tr><td style="border-width:0px;">&nbsp;</td></tr>
<tr><td colspan="3" style="border-width:0px;"><asp:Label runat="server" ID="er" ForeColor="Red" Text="Invalid Login credentials" Visible="false"></asp:Label></td></tr>
</table>

        </div>
        <div class="panel" id="home">
        
        <table>
    <tr style="height:50px;">
    <td style="color:Blue;border-bottom-width:0px; width:auto;">Student ID</td><td style="color:Blue;border-bottom-width:0px;">:</td><td style="border-bottom-width:0px;"><asp:TextBox ID="sid" runat="server" Width="150px" MaxLength="50" ></asp:TextBox><asp:RequiredFieldValidator ID="rfsid" runat="server" ControlToValidate="sid" ErrorMessage="Please Enter Student ID" ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator></td>
    </tr>
    <tr style="height:50px;">
    <td style="color:Blue;border-bottom-width:0px; width:auto;">Password</td><td style="color:Blue;border-bottom-width:0px;">:</td><td style="border-width:0px;">
    <asp:TextBox  runat="server" ID="regpw" TextMode="Password" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="regpw"
                ErrorMessage="Please Enter Password" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regrspw" runat="server" Font-Size="Small"
                ControlToValidate="regpw" ErrorMessage="Length must be 8 or more" ValidationExpression="^[a-zA-Z0-9@!#$%^&*()_+=-`]{8,50}$"
                ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
    </td>
    </tr>
    <tr style="height:50px;">
    
    </tr>
    <tr style="height:50px;">
    <td style="color:Blue;border-bottom-width:0px;">Student Name</td><td style="color:Blue;border-bottom-width:0px;">:</td><td style="border-bottom-width:0px;"><asp:TextBox ID="sname" runat="server" Width="150px" MaxLength="50" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="sname" ErrorMessage="Please Enter Student Name" ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator></td>
    </tr>
    <tr style="height:50px;">
    
    <td style="color:Blue;">Student Mobile</td><td style="color:Blue;">:</td><td><asp:TextBox ID="smob" runat="server" Width="150px" MaxLength="15" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="smob" ErrorMessage="Please Enter Mobile No." ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                Display="Dynamic" ErrorMessage="Please Enter a Valid Number" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" ControlToValidate="smob"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
    <td style="color:Blue;">Permanent Address</td><td style="color:Blue;">:</td><td><asp:TextBox runat="server" ID="permanent" Width="150px" ToolTip="Address" TextMode="MultiLine" Rows="4"></asp:TextBox><asp:RequiredFieldValidator ID="rfsname4" runat="server" 
                ErrorMessage="Please enter Address" ForeColor="Red"  ControlToValidate="permanent" Display="Dynamic"></asp:RequiredFieldValidator></td><td style="color: #FF0000">*</td>
    </tr>
    <tr>
    <td style="color:Blue;">Present Address</td><td style="color:Blue;">:</td><td><asp:TextBox runat="server" ID="present" Width="150px" ToolTip="Address" TextMode="MultiLine" Rows="4"></asp:TextBox></td>
    </tr>
    <tr><td>&nbsp</td></tr>
    <tr>
    <td colspan="3">
           <asp:Button ID="submi" runat="server" Text="SUBMIT" ToolTip="Submit" 
                />&nbsp&nbsp&nbsp<input id="Reset1" type="reset" value="Reset" />
       </td>
    </tr>
    </table>

        </div>
        <div class="panel" id="resp">
        <h3 style="color:Blue;">Student Responsibilities</h3>
        <h6>To help us better serve you and all students with disabilities we ask that you do the following.</h6>
        <h4 style="color:Blue;">All students with Disabilities</h4>
        <h6>
        <ul>
        <li>Enroll in classes as early as possible, please notify us at our office to make appropriate arranements.</li>
        <li>The first Week of Semester, notify professors about your disablity, to make appropriate arrangements for Exam.</li>
        <li>It is your responsibility to insure that your testing aggangements are made before the exam.</li>
        </ul>
        </h6>
        </div>
        <div class="panel" id="faq">
        <h3 style="color:Blue;">FAQ's</h3>
        <ul>
        <li><h4 style="color:Blue;">Definition of a Disablity</h4></li>
        <h6>A person is considered to be a person with a disability if he/she is someone with a physical or mental impairment that substantially limits one or more major life activities. This includes caring for oneself, performing manual tasks, walking, seeing, hearing, speaking, breathing, learning and working. A person is considered to be a person with a disability if he/she has the disability, has a record of the disability or is regarded as having the disability.

Under the Americans with Disabilities Act, a person with a disability is someone with a physical or mental impairment that substantially limits one or more major life activities. A person is considered to be a person with a disability if he/she has the disability, has a record of the disability or is regarded as having the disability.</h6>
        <li><h4 style="color:Blue;">Does the student receive "Special privileges" under this legislation?</h4></li>
        <h6>No. but rather as minimizing the impact of the student's disability to the greatest extent possible. Institutions are not required to make changes in or require a major or substantial change in an essential element of the curriculum. The institution has the right to set academic standards.

It is important that students be treated the same and be allowed to fail or succeed. This is important in their educational experience and may give the students an opportunity to learn from the experience. The legislation does not intend that institutions pass students because they have a disability, and it is important to expect the same academic performance, with requested accommodation, from the student with a disability as from a student without a disability.</h6>
        </ul>
        </div>
        
        </div>
        </div>
        </div>
        <div class="cleaner"></div>
    </div>
    </div>
    </div></div>
    <div class="cleaner"></div>
</div>

        <div class="footer">
            <p>&copy; UMKC - SSD 2014. Design by <a href="http://www.yarrasuresh9999.blogspot.com/" target="_blank">Students at UMKC</a>  | Email questions or comments about this website to syvd3 or pat24@mail.umkc.edu</p>

    </div>
    </div>
    </form>
</body>
</html>