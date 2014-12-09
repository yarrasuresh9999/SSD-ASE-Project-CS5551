<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="NewSSD.admin" %>


<!DOCTYPE HTML>
<html>
<head>
<title>Admin Page</title>
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
     <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- start plugins -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="css/font-awesome.min.css" rel="stylesheet">	
		<!-- Custom Color CSS -->
		<link href="css/less-style.css" rel="stylesheet">	
		<!-- Custom CSS -->
		<link href="css/style.css" rel="stylesheet">
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="#">

<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
<div class="header_bg1">
<div class="container">
	<div class="row header">
		<div class="logo navbar-left">
			<h1><a href="index.html" style="color:White;">UMKC-SSD</a></h1>
		</div>
		<div class="h_search navbar-right">
			<form>
				<input type="text" class="text" value="Enter text here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter text here';}">
				<input type="submit" value="search">
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="row h_menu">
		<nav class="navbar navbar-default navbar-left" role="navigation">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		    </div>
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="index.html">Home</a></li>
		        <li><a href="services.html">Services</a></li>
		        <li><a href="about.html">About</a></li>
		        <li><a href="contactus.aspx">Contact</a></li>
		        <li class="active"><a href="admin.aspx">Admin Login</a></li>
		        <li><a href="student.aspx">Student Login</a></li>
				<li><a href="parking.aspx">Parking</a></li>
                <li><a href="acesspoints.aspx">Access Points</a></li>
                <li><a href="placesin.html">Places</a></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		    <!-- start soc_icons -->
		</nav>
		
	</div>
	<div class="clearfix"></div>
</div>
</div>

	<div class="outer-page">
			
			 <!-- Login page -->
			 <div class="login-page">

					<!-- Nav tabs -->
					<ul class="nav nav-tabs nav-justified">
					  <li class="active"><a href="#login" data-toggle="tab" class="br-lblue"><i class="fa fa-sign-in"></i> Sign In</a></li>
					
					  <li><a href="#contact" data-toggle="tab" class="br-lblue"><i class="fa fa-envelope"></i> Guide Lines</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
					  <div class="tab-pane fade active in" id="login">
					  
						<!-- Login form -->
						
						<form runat="server">
                        <asp:Label runat="server" ID="ermsg" Text="Invalid Username or Password" Visible="false" ForeColor="Red" Font-Size="Small" ></asp:Label>
						  <div class="form-group">
							<label for="email">Username</label>
							<input type="text" class="form-control" id="uname" placeholder="Username" runat="server">
						  </div>
						  <div class="form-group">
							<label for="password">Password</label>
							<input type="password" class="form-control" id="pwd" placeholder="Password" runat="server">
						  </div>
						  <div class="checkbox">
							<label>
							  <input type="checkbox"> Remember Me Next Time
							</label>
						  </div>
						  <asp:Button runat="server" class="btn btn-info btn-sm" ID="adsub" Text="Submit" BorderWidth="0px" OnClick="adminsubmitbut" />
						  <button type="reset" class="btn btn-default btn-sm">Reset</button>
						</form>
						
					  </div>
					  
					  
				
					  
						
					  
					  
					  <div class="tab-pane fade" id="contact">
						
						<!-- Contact Form -->
						
						<form role="form" action="index.html">
						  <div class="form-group">
							<p>Assisting Students with Disabilities in an Emergency</p>
                            <p>From the Federal Emergency Management Agency Web site</p>
                            <p>People with disabilities who are self-sufficient under normal circumstances may have to rely on the help of others in a disaster.</p>
                            <ul>
                            <li><p>People with disabilities often need more time than others to make necessary preparations in an emergency. The needs of older people often are similar to those of persons with disabilities.</p></li>
                            <li><p>Because disaster warnings are often given by audible means such as sirens and radio announcements, people who are deaf or hard of hearing may not receive early disaster warnings and emergency instructions. Be their source of emergency information as it comes over the radio or television.</p></li>
                            <li><p>Some people who are blind or visually-impaired, especially older people, may be extremely reluctant to leave familiar surroundings when the request for evacuation comes from a stranger.</p></li>
                            </ul>
						</form>
						
					  </div>
					</div>
					
			 </div>	
			
		</div>
		
		<!-- Javascript files -->
		<!-- jQuery -->
		<script src="js/jquery.js"></script>
		<!-- Bootstrap JS -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Respond JS for IE8 -->
		<script src="js/respond.min.js"></script>
		<!-- HTML5 Support for IE -->
		<script src="js/html5shiv.js"></script>
		
		<!-- Javascript for this page -->
		
		<!-- Javascript for this page -->
      
        <script type="text/javascript">

		</script>
		


  			<div class="clearfix"></div>		
	</div> 
</div>

<div class="footer_bg"><!-- start footer -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-center">
				<p class="link"><span>&#169; All rights reserved </span></p>
			</div>
		</div>
	</div>
</div>
</body>
</html>