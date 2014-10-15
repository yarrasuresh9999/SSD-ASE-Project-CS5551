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
    
    <div style="width:960px;height:450px;">
    <div style="width:300px;height:450px; float:left;">
    
    <div id="tooplate_sidebar">
    <div id="menu">
                <ul class="navigation">
                    <li><a href="#about" class="selected menu_01">Admin Login</a></li>
                    <li><a href="#home" class="menu_02">Guidelines for Faculty</a></li>
                    
                </ul>
            </div>
            </div>
    </div>
    <div style="width:660px;height:450px;float:right;background-image:url(../images/panelbg.jpg); background-repeat:no-repeat;">
        <div id="content" >
            <div class="scroll">
                <div class="scrollContainer">

        <div class="panel" id="about">
        <h4 style="color:Blue;">Admin! Login here to Access the Services</h4>
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
        onclick="pglogin" Height="35px" Width="110px" /></center></td>
</tr>
<tr><td style="border-width:0px;">&nbsp;</td></tr>
<tr><td colspan="3" style="border-width:0px;"><asp:Label runat="server" ID="er" ForeColor="Red" Text="Invalid Login credentials" Visible="false"></asp:Label></td></tr>
</table>

        </div>
        <div class="panel" id="home">
        <h3 style="color:Blue;">Faculty Guidelines</h3>
        <br /><h4 style="color:Blue;">Assisting Students with Disabilities in an Emergency</h4>
        <h6 style="font-style:italic;">From the Federal Emergency Management Agency Web site</h6>
        <h6>People with disabilities who are self-sufficient under normal circumstances may have to rely on the help of others in a disaster.</h6>
        <ul>
        <li style="line-height:1.5em;">People with disabilities often need more time than others to make necessary preparations in an emergency. The needs of older people often are similar to those of persons with disabilities.</li> 

        <li style="line-height:1.5em;">Because disaster warnings are often given by audible means such as sirens and radio announcements, people who are deaf or hard of hearing may not receive early disaster warnings and emergency instructions. Be their source of emergency information as it comes over the radio or television.</li>

        <li style="line-height:1.5em;">Some people who are blind or visually-impaired, especially older people, may be extremely reluctant to leave familiar surroundings when the request for evacuation comes from a stranger.</li> </ul>
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
