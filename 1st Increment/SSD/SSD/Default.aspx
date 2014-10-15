<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="SSD._Default" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome to UMKC - SSD (Services for Students with Disabilities)</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />

<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>

</head>
<body>
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
	
	<div id="banner">
	
	     <div id="slider-wrapper">        
            <div id="slider" class="nivoSlider">
                <img src="images/slide1.jpg" alt="" />
                <img src="images/slide2.jpg" alt="" />
                <img src="images/slide3.jpg" alt="" />
				
            </div>
				
        </div>
	   
	   
	</div>
	
	<div class="welcome-bar">
		<div class="bar-top">
			<div class="bar-title">
				<h3>“I have a Disability yes that’s true, but all that really means is I may have to take a slightly different path than you.” - Robert M. Hensel </h3>
			</div>
			<div class="bar-button">
				<a class="button medium" href="#">Learn More</a>
			</div>
			<div class="clear"></div>
		</div>	
	</div>
    
    <div id="content-bottom">
        <div class="content-bottom-inner">
            <ul>
            	<li>
   	      <h4>Admin Services</h4></li>
                <li><img src="images/1.jpg" alt="image1" width="270" /></li>
                <li>Lorem ipsum dolor sit amet dolor sit, consectetur adipiscing elit. Donec rhoncus mi quis metus laoreet ultricies. </li>
                <li><a href="AdminLogin.aspx">Read More</a></li>
            </ul>
            
            <ul>
            	<li>
            	  <h4>Student Services</h4></li>
                <li><img src="images/2.jpg" alt="image2" width="270" /></li>
                <li>Lorem ipsum dolor sit amet dolor sit, consectetur adipiscing elit. Donec rhoncus mi quis metus laoreet ultricies. </li>
                <li><a href="Student.aspx">Read More</a></li>
            </ul>
            
            <ul class="lastcol">
       	    <li><h4>Success Stories</h4></li>
                <li><img src="images/3.jpg" alt="image3" width="270" /></li>
                 <li>Lorem ipsum dolor sit amet dolor sit, consectetur adipiscing elit. Donec rhoncus mi quis metus laoreet ultricies. </li>
                <li><a href="#">Read More</a></li>
            </ul>
            
            <div class="clear"></div>
        </div>
 
    </div>
    
    <div class="footer">
            <p>&copy; UMKC - SSD 2014. Design by <a href="http://www.yarrasuresh9999.blogspot.com/" style="text-decoration:none;" target="_blank">Students at UMKC</a>  | Email questions or comments about this website to syvd3 or pat24@mail.umkc.edu</p>
         </div>
</div>
</div>
</body>
</html>