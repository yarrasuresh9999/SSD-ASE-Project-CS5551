<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SSD.AdminLogin" %>


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
    <div style="align:left;"><a href="Default.aspx" style="text-decoration:none; color:Blue;">Home -> </a>Admin Services</div><br />
    
    <div id="slider">
    <div id="tooplate_wrapper">
    
    <div style="width:960px;height:400px;">
    <div style="width:300px;height:400px; float:left;">
    
    <div id="tooplate_sidebar">
    <div id="menu">
                <ul class="navigation">
                    <li><a href="#home" class="selected menu_01">Home</a></li>
                    <li><a href="#about" class="menu_02">About Us</a></li>
                    
                </ul>
            </div>
            </div>
    </div>
    <div style="width:660px;height:400px;float:right; background-image:url(../images/panelbg.jpg);">
        <div id="content">
            <div class="scroll">
                <div class="scrollContainer">
        <div class="panel" id="home">suresh</div>

        <div class="panel" id="about">yarra</div>

        
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
