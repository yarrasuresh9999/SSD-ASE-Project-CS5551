<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="SSD.AdminHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
    <title>Welcome Adminstrator Login Here</title>
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
    	<h1><a href="Default.aspx"><image src="images/umkc_logo.png" height="55px" ></image></a></h1>
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
    <div style="width:960px;height:30px;">
    <div style="align:left;width:860px;float:left; padding-left:20px;">Welcome Admin,</div>
    <div style="width:100px; he:30px;float:right;"><asp:Button runat="server" ID="lgo" Text="Logout" Font-Size="Large" onclick="logou" Height="30px"  ForeColor="Blue" Width="100px" /></div>
    </div>
    <br/>
    <div id="slider">
    <div id="tooplate_wrapper">
    
    <div style="width:960px;height:450px;">
    <div style="width:300px;height:450px; float:left;">
    
    <div id="tooplate_sidebar">
    <div id="menu">
                <ul class="navigation">
                    <li><a href="#home" class="selected menu_01">Registration Requests</a></li>
                    <li><a href="#about" class="menu_02">Student Oppointments</a></li>
                    <li><a href="#stu" class="menu_03">Student Profile</a></li>
                    
                </ul>
            </div>
            </div>
    </div>
    <div style="width:660px;height:450px;float:right;background-image:url(../images/panelbg.jpg); background-repeat:no-repeat;">
        <div id="content">
            <div class="scroll"> 
                <div class="scrollContainer">
        <div class="panel" id="home">Under Construction</div>
        <div class="panel" id="about">Under Construction</div>
        <div class="panel" id="stu">Under Construction</div>
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
