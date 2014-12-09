<%@ Page Language="C#" AutoEventWireup="true"   CodeBehind="contactus.aspx.cs" Inherits="NewSSD.contactus" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Contact Us Page</title>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>
<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/markerclusterer/src/markerclusterer.js"></script>
<script type="text/javascript">
    var locations = [
                ['Royal hall', 39.032836, -94.576413, 4],
                ['Student Union', 39.034182, -94.581661, 5],
                ['Law School', 39.033226, -94.58215, 3],
                ['Bloch School', 39.033515, -94.581063, 2],
                ['Cherry Street', 39.036222, -94.58182, 1],
                ['Arts and Sciences', 39.036857, -94.578483, 6],
                ['ISAO', 39.036061, -94.576912, 7],
                ['Miller Nichols', 39.035365, -94.576456, 8],
                ['Flarsheim Hall', 39.034349, -94.576386, 9],
                ['Parking structure', 39.032149, -94.57637, 10],

                ];
    var address = "215 W. Pershing Road, 5th floor,Kansas City, MO 64108";

    function initialize() {
        geocoder = new google.maps.Geocoder();

        var directionsDisplay = new google.maps.DirectionsRenderer();
        var directionsService = new google.maps.DirectionsService();

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var lat = position.coords.latitude;
                var lng = position.coords.longitude;
                var pos = new google.maps.LatLng(lat, lng);
                var pinColor = "0B610B";
                var pinImage = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_letter&chld=%E2%80%A2|" + pinColor,
                    new google.maps.Size(21, 34),
                    new google.maps.Point(0, 0),
                    new google.maps.Point(10, 34));
                var pinShadow = new google.maps.MarkerImage("http://chart.apis.google.com/chart?chst=d_map_pin_shadow",
                    new google.maps.Size(40, 37),
                    new google.maps.Point(0, 0),
                    new google.maps.Point(12, 35));

                var marker = new google.maps.Marker({
                    position: pos,
                    map: map,
                    icon: pinImage,
                    shadow: pinShadow
                });

                map.setCenter(pos);



                geocoder.geocode({ 'address': address }, function (results, status) {

                    posi = results[0].geometry.location;
                    map.setCenter(results[0].geometry.location);
                    var marker2 = new google.maps.Marker({
                        map: map,
                        position: results[0].geometry.location,
                        title: address
                    });

                    //alert(marker2.position);

                    var request = {
                        origin: pos,
                        destination: marker2.position,
                        travelMode: google.maps.DirectionsTravelMode.DRIVING
                    };
                    directionsService.route(request, function (response, status) {
                        if (status == google.maps.DirectionsStatus.OK) {
                            directionsDisplay.setDirections(response);
                        }
                    });
                });






            }, function () {
                handleNoGeolocation(true);
            });
        } else {
            // Browser doesn't support Geolocation
            handleNoGeolocation(false);
        }


        function handleNoGeolocation(errorFlag) {
            if (errorFlag) {
                var content = 'Error: The Geolocation service failed.';
            } else {
                var content = 'Error: Your browser doesn\'t support geolocation.';
            }
        }

        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 15,
            center: new google.maps.LatLng(39.032969, -94.578019),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directions-panel'));

    }
    function find_closest_marker(lat, lng) {

        var pi = Math.PI;
        var R = 6371; //equatorial radius
        var distances = [];
        var closest = -1;


        for (i = 0; i < locations.length; i++) {

            var lat2 = locations[i][1];
            var lon2 = locations[i][2];

            var chLat = lat2 - lat;
            var chLon = lon2 - lng;


            var dLat = chLat * (pi / 180);
            var dLon = chLon * (pi / 180);

            var rLat1 = lat * (pi / 180);
            var rLat2 = lat2 * (pi / 180);

            var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
            Math.sin(dLon / 2) * Math.sin(dLon / 2) * Math.cos(rLat1) * Math.cos(rLat2);
            var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
            var d = R * c;


            distances[i] = d;
            if (closest == -1 || d < distances[closest]) {
                closest = i;
            }
        }


        return {
            latitude: locations[closest][1],
            longitude: locations[closest][2]
        };
    }





    google.maps.event.addListener(window, 'load', find_closest_marker);

    google.maps.event.addDomListener(window, 'load', initialize);
    </script>
        

<!----font-Awesome----->
   	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
<!----font-Awesome----->
</head>
<body>
<div class="header_bg1">
<div class="container">
	<div class="row header">
		<div class="logo navbar-left">
			<h1><a href="index.html" style="color:White;">UMKC - SSD</a></h1>
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
		        <li class="active"><a href="contactus.aspx">Contact</a></li>
		        <li><a href="admin.aspx">Admin Login</a></li>
		        <li><a href="student.aspx">Studnet Login</a></li>
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
<div class="main_bg"><!-- start main -->
	
	<div class="container">
		<div class="main row">
			<div id="map" style="width: 100%; height: 350px;"></div>
			<div id="directions-panel"></div>
		</div>

		</div>
	</div>
</div><!-- end main -->
<div class="main_btm"><!-- start main_btm -->
	
	<div class="container">
		<div class="main row">
			    <div class="col-md-4 company_ad">
				    <h2>Our Address :</h2>
      				<address>
						 <p>UMKC Institute for Human Development,</p>
						 <p>215 W. Pershing Road, 5th floor,</p>
						 <p>Kansas City, MO 64108</p>
				 	 	<p>Email: <a href="mailto:info@mycompany.com">info(at)umkcssd.com</a></p>
				   		<p>Our office hours are Monday through Friday, 9:00 am tp 5:00 pm</p>
				   		<p>Please note: if you are unable to travel to our office location, please contact your Navigator to schedule a face-to-face appointment on campus. We will make arrangements to meet you!</p>
				   		
				   	</address>
				   
				</div>
				<div class="col-md-8">
				  <div class="contact-form">
				  	<asp:Label runat="server" Visible="false" Text="Thank you, for submitting your comments, we will reach you soon." ForeColor="Red" Font-Size="Medium" ID="Label3"></asp:Label>
                    <h2>Contact Us</h2>
					    <form runat="server">
					    	<div>
						    	<span>name</span>
						    	<span><input type="text" class="form-control" id="userName" runat="server"/></span>
                                <asp:Label runat="server" Visible="false" Text="Please Enter your Name" ForeColor="Red" Font-Size="Medium" ID="ern"></asp:Label>
						    </div>
						    <div>
						    	<span>e-mail</span>
						    	<span><input type="text" class="form-control" id="inputEmail3" runat="server"/></span>
                                <asp:Label runat="server" Visible="false" Text="E-Mail Can't be empty" ForeColor="Red" Font-Size="Medium" ID="Label1"></asp:Label>
						    </div>
						    <div>
						    	<span>subject</span>
						    	<span><textarea runat="server" id="msg"> </textarea></span>
                                
                                <asp:Label runat="server" Visible="false" Text="Your Message Can't be empty" ForeColor="Red" Font-Size="Medium" ID="Label2"></asp:Label>
						    </div>
						   <div>
						   		<label class="fa-btn btn-1 btn-1e"><asp:Button runat="server" Text="SUBMIT US"  ID="sb" CausesValidation="True" OnClick="subclick" /></label>
						  </div>
					    </form>
                       
				    </div>
  			</div>		
  			<div class="clearfix"></div>		
	</div> 
</div>
</div>
<div class="footer_bg"><!-- start footer -->
	<div class="container">
		<div class="row  footer">
			<div class="copy text-center">
				<p class="link"><span>&#169; All rights reserved</span></p>
			</div>
		</div>
	</div>
</div>
</body>
</html>