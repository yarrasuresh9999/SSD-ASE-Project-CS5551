<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegistration.aspx.cs" Inherits="SSD.StudentRegistration" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Registration</title>
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
<form runat="server" id="res">
<div id="container">
<div id="inner">


	<div id="header">
    	<h1><a href="Default.aspx"><img src="images/umkc_logo.png" height=55px ></image></a></h1>
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
    <div style="align:left;"><a href="Default.aspx" style="text-decoration:none; color:Blue;">Home -> </a><a href="Student.aspx" style="text-decoration:none; color:Blue;">Student Service -> </a>Registration</div><br />
    <div style="width:960px; height: auto;" align="center">
    <table style="width:700px;">
        <tr style="height:50px;">
        <td colspan="3" style="color:Blue; border-bottom-width:0px;">Lets Join with us and access our Service</td>
        </tr>
    <tr style="height:50px;">
    <td style="color:Blue;border-bottom-width:0px; width:auto;">Student ID</td><td style="color:Blue;border-bottom-width:0px;">:</td>
    <td style="border-bottom-width:0px;"><asp:TextBox ID="sid" runat="server" Width="150px" MaxLength="50" ></asp:TextBox><asp:RequiredFieldValidator ID="rfsid" runat="server" ControlToValidate="sid" ErrorMessage="Please Enter Student ID" ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Font-Size="Small"
                ControlToValidate="sid" ErrorMessage="Enter a Valid ID Eg. 16161010" ValidationExpression="^[0-9]{8}$"
                ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
    </td>
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
    <td style="color:Blue;border-bottom-width:0px; width:auto;">Conform Password</td><td style="color:Blue;border-bottom-width:0px;">:</td>
    <td style="border-width:0px;">
    <asp:TextBox  runat="server" ID="regconpw" TextMode="Password" Width="150px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="regconpw"
                ErrorMessage="Please Enter Password" ForeColor="Red" Display="Dynamic" ></asp:RequiredFieldValidator>
  <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="regpw" ControlToValidate="regconpw" 
                ErrorMessage="Password Doesn't Match" Font-Size="Small" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
    </td>
    </tr>
    <tr style="height:50px;">
    <td style="color:Blue;border-bottom-width:0px;">Student Name</td><td style="color:Blue;border-bottom-width:0px;">:</td>
    <td style="border-bottom-width:0px;"><asp:TextBox ID="sname" runat="server" Width="150px" MaxLength="50" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="sname" ErrorMessage="Please Enter Student Name" ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" Font-Size="Small"
                ControlToValidate="sname" ErrorMessage="Enter a Valid name Eg. John Alex" ValidationExpression="^[a-zA-Z]{3,50}$"
                ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator></td>
    </tr>
    <tr style="height:50px;">
    
    <td style="color:Blue; border-bottom-width:0px;">Student Mobile</td><td style="color:Blue; border-bottom-width:0px;">:</td>
    <td style="border-bottom-width:0px;"><asp:TextBox ID="smob" runat="server" Width="150px" MaxLength="15" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="smob" ErrorMessage="Please Enter Mobile No." ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                Display="Dynamic" ErrorMessage="Please Enter a Valid Number" ForeColor="Red" ValidationExpression="^([\(]{1}[0-9]{3}[\)]{1}[\.| |\-]{0,1}|^[0-9]{3}[\.|\-| ]?)?[0-9]{3}(\.|\-| )?[0-9]{4}$" ControlToValidate="smob"></asp:RegularExpressionValidator></td>
    </tr>
    <tr style="height:50px;">
    <td style="color:Blue; border-bottom-width:0px;">Student EMail</td><td style="color:Blue; border-bottom-width:0px;">:</td>
    <td style="border-bottom-width:0px;"><asp:TextBox ID="semail" runat="server" Width="150px" MaxLength="50" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="semail" ErrorMessage="Please Enter EMail ID." ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                Display="Dynamic" ErrorMessage="Eg. ajohn@mail.umkc.edu" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*.edu" ControlToValidate="semail"></asp:RegularExpressionValidator></td>
    
    </tr>
    <tr style="height:50px;">
    <td style="color:Blue; border-bottom-width:0px;">Address</td><td style="color:Blue; border-bottom-width:0px;">:</td>
    <td style="border-bottom-width:0px;">
          <asp:TextBox ID="sadd" runat="server" Width="150px" MaxLength="50" ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="sadd" ErrorMessage="Please Enter Your Address." ForeColor="Red"  Display="Dynamic"></asp:RequiredFieldValidator>
       </td>

    </tr>
    <tr><td style="border-bottom-width:0px;">&nbsp</td></tr>
    <tr>
    <td colspan="3" style=" border-bottom-width:0px;">
           <asp:Button ID="submi" runat="server" Text="SUBMIT"  OnClick="regsub" ToolTip="Submit" 
                />&nbsp&nbsp&nbsp<input id="Reset1" type="reset" value="Reset" />
       </td>
    </tr>
    </table>
    </div>
    <br />
    <div class="footer">
            <p>&copy; UMKC - SSD 2014. Design by <a href="http://www.yarrasuresh9999.blogspot.com/" style="text-decoration:none;" target="_blank">Students at UMKC</a>  | Email questions or comments about this website to syvd3 or pat24@mail.umkc.edu</p>
         </div>
</div>
</div>
</form>
</body>
</html>