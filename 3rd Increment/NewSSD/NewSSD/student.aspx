<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="NewSSD.student" %>


<!DOCTYPE HTML>
<html>
<head>
<title>Students Page</title>
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
<script src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places&dummy=.js" type="text/javascript"></script>
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
<script type = "text/javascript">
    $(document).ready(function () {

        $("#sb").click(function () {
            var userna = $("#uname").val();
            var passwo = $("#pword").val();
            $.ajax({
                type: "GET",
                url: "http://kc-sce-cs551.kc.umkc.edu/aspnet_client/Group3/C2/ASEService/ASEService/Service1.svc/get/" + userna + "",
                dataType: "json",
                success: function (data) {
                    if (passwo == data) {
                        window.location.href = "userhome.html";
                    }
                    else {
                        $("#uname").val('');
                        $("#pword").val('');
                        $("#div1").html('Invalid Username or Password');

                    }
                },
                error: function (data) {

                    $("#div1").html('Invalid Username or Password');

                }
            });

        });
    });

</script>
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
		        <li ><a href="admin.aspx">Admin Login</a></li>
		        <li class="active"><a href="student.aspx">Student Login</a></li>
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
					  <li><a href="#register" data-toggle="tab" class="br-lblue"><i class="fa fa-pencil"></i> Sign Up</a></li>
					  <li><a href="#contact" data-toggle="tab" class="br-lblue"><i class="fa fa-envelope"></i> Mail Us</a></li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
					  <div class="tab-pane fade active in" id="login">
					  
						<!-- Login form -->
						
						<form runat="server">
                        <asp:Label runat="server" ID="ermsg" Text="Invalid Username or Password" Visible="false" ForeColor="Red" Font-Size="Small" ></asp:Label>
                        <asp:Label runat="server" ID="ermm" Text="Your Account is in Still Pending, Mail us for more information" Visible="false" ForeColor="Red" Font-Size="Small" ></asp:Label>
						  <div class="form-group">
							<label for="email">Student ID</label>
							
                            <asp:TextBox runat="server" class="form-control" ID="slid" placeholder="Student ID" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="slid" Font-Size="Small" ErrorMessage="Please Enter Student ID" ForeColor="Red"  Display="Dynamic" ValidationGroup="logingr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Font-Size="Small" ControlToValidate="slid" ErrorMessage="Enter a Valid ID Eg. 16161010" ValidationExpression="^[0-9]{8}$" ForeColor="Red" Display="Dynamic" ValidationGroup="logingr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="password">Password</label>
							<asp:TextBox runat="server" class="form-control" ID="slpw" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="slpw" Font-Size="Small" ErrorMessage="Please Enter Password" ForeColor="Red"  Display="Dynamic" ValidationGroup="logingr"></asp:RequiredFieldValidator>
						  </div>
						  <div class="checkbox">
							<label>
							  <input type="checkbox"> Remember Me Next Time
							</label>
						  </div>
						  <asp:Button runat="server" class="btn btn-info btn-sm" ID="logsub" Text="Submit" BorderWidth="0px" ValidationGroup="logingr" OnClick="loginsubmitbut" />
						  <button type="reset" class="btn btn-default btn-sm">Reset</button>
						
						
					  </div>
					  
					  
					  <div class="tab-pane fade" id="register">
						<!-- Register form -->
					  
						<div class="alert alert-info">Just <strong>Click "Submit"</strong> to visit the Dashboard</div>
						
						  <div class="form-group">
							<label for="fname">First Name</label>
                            <asp:TextBox runat="server" class="form-control" ID="fname" placeholder="First Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="fname" Font-Size="Small" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Font-Size="Small"
                ControlToValidate="fname" ErrorMessage="Enter a Valid name Eg. John" ValidationExpression="^[a-zA-Z]{3,50}$"
                ForeColor="Red" Display="Dynamic" ValidationGroup="reggr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="lname">Last Name</label>
							<asp:TextBox runat="server" class="form-control" ID="lname" placeholder="Last Name" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="lname" Font-Size="Small" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" Font-Size="Small"
                ControlToValidate="fname" ErrorMessage="Enter a Valid name Eg. Alex" ValidationExpression="^[a-zA-Z]{3,50}$"
                ForeColor="Red" Display="Dynamic" ValidationGroup="reggr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="email">Email</label>
							<asp:TextBox runat="server" class="form-control" ID="regemail" placeholder="E-Mail" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="regemail" Font-Size="Small" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                Display="Dynamic" ErrorMessage="Please Enter a Valid E-Mail Eg. ajohn@mail.umkc.edu" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*.edu" ControlToValidate="regemail" ValidationGroup="reggr" Font-Size="Small"></asp:RegularExpressionValidator>
						  </div>
                          <div class="form-group">
							<label for="email">Student ID</label>
							<asp:TextBox runat="server" class="form-control" ID="regsid" placeholder="Student Id" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="regsid" Font-Size="Small" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" Font-Size="Small" ControlToValidate="regsid" ErrorMessage="Enter a Valid ID Eg. 16161010" ValidationExpression="^[0-9]{8}$" ForeColor="Red" Display="Dynamic" ValidationGroup="reggr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="password">Password</label>
							<asp:TextBox runat="server" class="form-control" ID="regspw" placeholder="Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="regspw"
                ErrorMessage="You can't leave this empty" ForeColor="Red" Display="Dynamic" ValidationGroup="reggr" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regrspw" runat="server" Font-Size="Small"
                ControlToValidate="regspw" ErrorMessage="Password Length must be 8 or more" ValidationExpression="^[a-zA-Z0-9@!#$%^&*()_+=-`]{8,50}$"
                ForeColor="Red" Display="Dynamic" ValidationGroup="reggr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="cpassword">Confirm Password</label>
							<asp:TextBox runat="server" class="form-control" ID="regscpw" placeholder="Confirm Password" TextMode="Password" ValidationGroup="reggr"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Font-Size="Small" ControlToValidate="regscpw"
                ErrorMessage="You can't leave this empty" ForeColor="Red" Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="regspw" ControlToValidate="regscpw" 
                ErrorMessage="Password Doesn't Match" Font-Size="Small" ForeColor="Red" Display="Dynamic" ValueToCompare="reggr"></asp:CompareValidator>
						  </div>
						  <div class="form-group">
							<label for="phone">Phone Number</label>
							<asp:TextBox runat="server" class="form-control" ID="regph" placeholder="Phone Number" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Font-Size="Small" ControlToValidate="regph" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" 
                Display="Dynamic" ErrorMessage="Please Enter a Valid Number" ForeColor="Red" Font-Size="Small" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" ControlToValidate="regph" ValidationGroup="reggr"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="address">Address</label>
							<asp:TextBox runat="server" class="form-control" ID="addr" placeholder="Address" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Font-Size="Small" ControlToValidate="addr" ErrorMessage="You can't leave this empty" ForeColor="Red"  Display="Dynamic" ValidationGroup="reggr"></asp:RequiredFieldValidator>
                            <script type="text/javascript">
                                var input = document.getElementById('addr');
                                var options = { componentRestrictions: { country: 'us'} };

                                new google.maps.places.Autocomplete(input, options);

                            </script>
						  </div>
						  <div class="checkbox">
							<label>
							  <asp:CheckBox runat="server" ID="cb" /> Agree Terms & Conditions
                            
							</label>
						  </div>
						  <asp:Button ID="regsub" runat="server" class="btn btn-info btn-sm" Text="Submit Request" BorderWidth="0px" ValidationGroup="reggr" OnClick="regsubmitbut" />
						  <button type="reset" class="btn btn-default btn-sm">Reset</button>
						
					  
					  </div>
					  
					  
					  <div class="tab-pane fade" id="contact">
						
						<!-- Contact Form -->
						
						
						  <div class="form-group">
							<label for="name">Name</label>
                            <asp:TextBox runat="server" class="form-control" placeholder="Name" ID="nn" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="nn" Font-Size="Small" ErrorMessage="Please Enter Name" ForeColor="Red"  Display="Dynamic" ValidationGroup="mailus"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Font-Size="Small"
                ControlToValidate="nn" ErrorMessage="Enter a Valid name Eg. John Alex" ValidationExpression="^[a-zA-Z]{3,50}$"
                ForeColor="Red" Display="Dynamic" ValidationGroup="mailus"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="email">Email</label>
                            <asp:TextBox runat="server" class="form-control" placeholder="E-Mail" ID="cem" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cem" ErrorMessage="Please Enter EMail ID." ForeColor="Red"  Display="Dynamic" Font-Size="Small" ValidationGroup="mailus"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                Display="Dynamic" ErrorMessage="Enter a Valid E-Mail ID" ForeColor="Red"  Font-Size="Small" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ControlToValidate="cem" ValidationGroup="mailus"></asp:RegularExpressionValidator>
						  </div>
						  <div class="form-group">
							<label for="message">Message</label>
                            <asp:TextBox runat="server" class="form-control" placeholder="Message" ID="cmsg" TextMode="MultiLine" Rows="3"></asp:TextBox><button id="button1" onclick="toggleStartStop()" type="button" BorderWidth="0px" CausesValidation="false" ></button>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cmsg" ErrorMessage="Please Enter Your Message" ForeColor="Red"  Display="Dynamic" Font-Size="Small" ValidationGroup="mailus"></asp:RequiredFieldValidator>
                            
                            <script type="text/javascript">

                                var recognizing;
                                var recognition = new webkitSpeechRecognition();
                                recognition.continuous = true;
                                reset();
                                recognition.onend = reset();

                                recognition.onresult = function (event) {
                                    for (var i = event.resultIndex; i < event.results.length; ++i) {
                                        if (event.results[i].isFinal) {
                                            cmsg.value += event.results[i][0].transcript;
                                        }
                                    }
                                }

                                function reset() {
                                    recognizing = false;
                                    button1.innerHTML = "<IMG SRC='/Images/mic.png' WIDTH='15px' HEIGHT='25px'>";
                                }

                                function toggleStartStop() {
                                    if (recognizing) {
                                        recognition.stop();
                                        reset();
                                    } else {
                                        recognition.start();
                                        recognizing = true;
                                        button1.innerHTML = " <IMG SRC='/Images/micst.jpg' WIDTH='15px' HEIGHT='25px'>";
                                    }
                                }
</script>
						  </div>
						  <asp:Button runat="server" Text="Submit" 
                              ForeColor="White" BackColor="#32c8de" BorderColor="#32c8de" 
                              class="btn btn-info btn-sm" OnClick="msgsub" ID="cdu" ValidationGroup="mailus" CausesValidation="True" />
						  <button type="reset" class="btn btn-default btn-sm">Reset</button>
						
						
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
</form>
</body>
</html>