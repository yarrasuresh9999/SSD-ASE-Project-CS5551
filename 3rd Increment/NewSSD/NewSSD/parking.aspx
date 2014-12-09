<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="parking.aspx.cs" Inherits="NewSSD.parking" %>

<!DOCTYPE HTML>
<html>
<head>
<title>Disability Parking</title>
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
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>
<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/markerclusterer/src/markerclusterer.js"></script>



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
		        <li><a href="contactus.aspx">Contact</a></li>
		        <li><a href="admin.aspx">Admin Login</a></li>
		        <li><a href="student.aspx">Studnet Login</a></li>
		        <li class="active"><a href="parking.aspx">Parking</a></li>
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
			<div id="directions-panel" style="width:100%;"></div>
		</div>

		</div>
	</div>
    
  <div align="center" style="font-size:large;">
  <p style="color:Blue; font-size:small;">Please select the Block from the Drop Down for the parking Details</p>
  <select name = "parking_spots" id = "parking_spots">
  <option value="Royal_Hall">Royal hall</option>
  <option value="student_union">Student Union</option>
  <option value="law_School">Law School</option>
  <option value="bloch">Bloch School</option>
  <option value="cherry">Cherry Street</option>
  <option value="arts">Arts and Sciences</option>
  <option value="Isao">ISAO</option>
  <option value="mnl">Miller Nichol's</option>
  <option value="flarsheim">Flarsheim Hall</option>
  <option value="parking">Parking structure</option>
  <option value="soe">School of education</option>
  <option value="grant">Grant hall</option>
  <option value="cockefair">Cockefair hall</option>
  <option value="sbe">School of Biological Sciences</option>
  <option value="dorms">Dorm's</option>
  <option value="oak">oak</option>
  <option value="johnson">Johnson</option>
  <option value = "init">Nearest University Parking</option> 
  
</select>
</div>

    </body>
    <script type="text/javascript">
        // Try HTML5 geolocation
        var locations = [
                ['Royal hall', 39.032836, -94.576413, 4, 'Royal_Hall'],
                ['Student Union', 39.034182, -94.581661, 5, 'student_union'],
                ['Law School', 39.033226, -94.58215, 3, 'law_School'],
                ['Bloch School', 39.033515, -94.581063, 2, 'bloch'],
                ['Cherry Street', 39.036222, -94.58182, 1, 'cherry'],
                ['Arts and Sciences', 39.036857, -94.578483, 6, 'arts'],
                ['ISAO', 39.036061, -94.576912, 7, 'Isao', ],
                ['Miller Nichols', 39.035365, -94.576456, 8, 'mnl'],
                ['Flarsheim Hall', 39.034349, -94.576386, 9, 'flarsheim'],
                ['Parking structure', 39.032149, -94.57637, 10, 'parking'],
     ['School of education', 39.030994, -94.578926, 11, 'soe'],
['Grant hall', 39.031244, -94.577692, 12, 'grant'],
['Cockefair hall', 39.032988, -94.574927, 13, 'cockefair'],
['School of Biological Sciences', 39.035015, -94.573911, 14, 'sbe'],
['Dorms', 39.035015, -94.573911, 15, 'dorms'],
['oak', 39.035328, -94.583137, 16, 'oak'],
['johnson', 39.037153, -94.582955, 17, 'johnson']
];


        var selected_value = document.getElementById("parking_spots");
        selected_value.onchange = function () {
            var selectedString = selected_value.options[selected_value.selectedIndex].value;
            var select = selectedString;
            //alert(selectedString);

            if (selectedString == "init") {
                initialize();
            }
            else {
                for (var i = 0; i < locations.length - 1; i++) {
                    if (selectedString == locations[i][4]) {
                        alert(locations[i][0]);
                        alert(locations[i][1]);
                        initialize2(locations[i][1], locations[i][2]);
                    }
                }

            }
        }



        //funtion return_lat_longs       
        function initialize2(lati, longi) {
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
                    //find_closest_marker(lat,lng);        
                    //var latlngs = find_closest_marker(lat,lng);
                    //alert(locations[i][1]);
                    //var latitude = locations[i][1];
                    //var longitude = locations[i][2];
                    var request = {
                        origin: pos,
                        destination: new google.maps.LatLng(lati, longi),
                        travelMode: google.maps.DirectionsTravelMode.DRIVING
                    };
                    directionsService.route(request, function (response, status) {
                        if (status == google.maps.DirectionsStatus.OK) {
                            directionsDisplay.setDirections(response);
                        }
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


            var markers = new Array();
            for (var i = 0; i < locations.length; i++) {
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map,
                    title: locations[i][0]
                });
                markers.push(marker);

            }
            var markerCluster = new MarkerClusterer(map, markers);
        }



        function initialize() {
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
                    find_closest_marker(lat, lng);
                    var latlngs = find_closest_marker(lat, lng);
                    var latitude = latlngs.latitude;
                    var longitude = latlngs.longitude;
                    var request = {
                        origin: pos,
                        destination: new google.maps.LatLng(latitude, longitude),
                        travelMode: google.maps.DirectionsTravelMode.DRIVING
                    };
                    directionsService.route(request, function (response, status) {
                        if (status == google.maps.DirectionsStatus.OK) {
                            directionsDisplay.setDirections(response);
                        }
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





            var markers = new Array();
            for (var i = 0; i < locations.length; i++) {
                var marker = new google.maps.Marker({
                    position: new google.maps.LatLng(locations[i][1], locations[i][2]),
                    map: map,
                    title: locations[i][0]
                });
                markers.push(marker);

            }
            var markerCluster = new MarkerClusterer(map, markers);
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
        google.maps.event.addDomListener(window, 'load', initialize2);
        google.maps.event.addDomListener(window, 'load', initialize);
        
    </script>

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