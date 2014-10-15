<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="SSD.Contactus" %>

<html>
<head>
    <title>SSD - Contact US page</title>
    <link rel="stylesheet" href="styles.css" type="text/css" />
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <style type="text/css">
#wrapper{
float:right;
    margin-left:auto;
    margin-right:auto;
    height:auto; 
    width:auto;
}
</style>
<style type="text/css">
 #directions-panel {
        height: 300px;
        float: right;
        width: 300px;
        overflow: auto;
      }

</style>
<style>
#directions-panel
{
}
</style>

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
    var address = "5100 Rockhill Rd, University of Missouri-Kansas City, Volker Campus, Kansas City, MO 64110";
    var address2 = "2995 us highway 412, cardwell, missouri"

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
    <div style="width:960px;height:100%;">
    <div style="width:660px;height:100%; float:left;">
    <div style="align:left;"><a href="Default.aspx" style="text-decoration:none; color:Blue;">Home -> </a>Contact Us</div><br /><br />
    <h3 style="color:Blue;">Contact Us</h3>
    <br />
    <h4 style="color:Blue;">Physical Locations</h4>
    <h6>Office of Services for Students with Disabilities<br />
    4825 Troost<br />
    Suite 104</h6>
    <h6>Our Office hours are Monday through Friday, 8:30-5:00 pm except University 
    holidays.</h6>
    
    <h6><a style="color:Blue; text-decoration:none;">Please note:</a> If you are unable to access the programs and 
    services our office provides at our current location <br />because of a disability 
    related reason please contact Petri Alexis at 816.235.5872 or by email at
    <a href="mailto:petria@umkc.edu" style="color:Blue;">petria@umkc.edu</a> 
    <br />and we will make arrangements to meet you.</h6>
    <br/>
    <h4>Mailing address</h4>

    <h6>Office of Services for Students with Disabilities<br/>
    University of Missouri-Kansas City<br/>
    5100 Rockhill Road<br/>
    4825T, #104<br/>
      Kansas City, MO 64110-2499<br/> 
    </h6>
    <br/>
    <h6>Phone: 816-235-5872<br/>
    Fax: 816-235-6363<br/>
    E-mail:<a href="mailto:disability@umkc.edu" style="color:Blue;"> disability@umkc.edu</a><br/>
    </h6>
    <br/>
    
    <h6><a href="#" style="text-decoration:none;color:Blue;">Click here </a>to contact individual staff members </h6>
    <br/>    </div>
    <div style="width:300px;height:100%; float:right;">
    <div id ="wrapper">


    <div id="map" style="width: 300px; height: 300px;"></div>
<div id="directions-panel"></div>
</div>
    </div>
    </div>
    <div class="footer">
            <p>&copy; UMKC - SSD 2014. Design by <a href="http://www.yarrasuresh9999.blogspot.com/" target="_blank">Students at UMKC</a>  | Email questions or comments about this website to syvd3 or pat24@mail.umkc.edu</p>
         </div>
    </div>
    </div>
    </form>
</body>
</html>