﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="NewSSD.users" %>

<!DOCTYPE html>
<html>
<head>
    <!-- Title here -->
    <title>Users - Alexis</title>
    <!-- Description, Keywords and Author -->
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Styles -->
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Font awesome CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- jQuery gritter -->
    <link href="css/jquery.gritter.css" rel="stylesheet">
    <!-- Custom Color CSS -->
    <link href="css/less-style1.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/style1.css" rel="stylesheet">

    <!-- Favicon -->
    <link rel="shortcut icon" href="#">
</head>

<body>

    <div class="outer">

        <!-- Sidebar starts -->
        <div class="sidebar">

            <div class="sidey">

                <!-- Logo -->
                <div class="logo">
                    <h1><a href="index.html"><i class="fa fa-desktop br-red"></i> Alexis <span>UMKC Institute for Human Development</span></a></h1>
                </div>

                <!-- Sidebar navigation starts -->
                <!-- Responsive dropdown -->
                <div class="sidebar-dropdown"><a href="#" class="br-red"><i class="fa fa-bars"></i></a></div>

                <div class="side-nav">

                    <div class="side-nav-block">
                        <!-- Sidebar heading -->
                        <h4>Main</h4>
                        <!-- Sidebar links -->
                        <ul class="list-unstyled">
                            <li><a href="adminhome.aspx"><i class="fa fa-desktop"></i> Dashboard</a></li>
                            <li ><a href="users.aspx" class="active"><i class="fa fa-user"></i> Users</a></li>
                            <li><a href="studentrequests.aspx"><i class="fa fa-user"></i>Student Requests</a></li>
                            <li><a href="studentprofiles.aspx"><i class="fa fa-bar-chart-o"></i>Student Profiles</a></li>
                            <li><a href="posts.aspx"><i class="fa fa-edit"> </i>Posts</a></li>
                            <li><a href="contactmsg.aspx"><i class="fa fa-bell"> </i>Messages</a></li>
                            <!-- Mainmenu with submenu -->

                        </ul>
                    </div>
                </div>

                <!-- Sidebar navigation ends -->

            </div>
        </div>
        <!-- Sidebar ends -->
        <!-- Mainbar starts -->
        <div class="mainbar">

            <!-- Mainbar head starts -->
            <div class="main-head">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <!-- Page title -->
                            <h2><i class="fa fa-desktop lblue"></i> Dashboard</h2>
                        </div>

                        <div class="col-md-3 col-sm-4 col-xs-6">
                            <!-- Search block -->
                            <div class="head-search">
                                <form class="form" role="form">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-4 hidden-xs">
                            <!-- Notifications -->
                            <div class="head-noty text-center">

                                <!-- Notifications -->
                                
                                <!-- Messages -->
                                <div class="dropdown">
                                    <a href="#" id="messages" data-toggle="dropdown" class="mhead-icon"><i class="fa fa-envelope"></i> <span class="label label-danger"><asp:Label runat="server" ID="msgcountdis3"></asp:Label></span></a>
                                    <ul class="dropdown-menu" role="button" aria-labelledby="messages">

                                        <!-- Dropdown menu head -->
                                        <li class="dropdown-head">
                                            Messages <span class="label label-danger pull-right"><asp:Label runat="server" ID="msgcountdis2"></asp:Label></span>
                                        </li>
                                        <!-- Content -->
                                        <li>
                                            <a href="contactmsg.aspx">
                                                <!-- Title -->
                                                <asp:Label runat="server" ID="mn1"></asp:Label> <i class="fa fa-reply pull-right"></i>
                                                <!-- Para -->
                                                <span><asp:Label runat="server" ID="mm1"></asp:Label></span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="contactmsg.aspx">
                                                <asp:Label runat="server" ID="mn2"></asp:Label> <i class="fa fa-reply pull-right"></i>
                                                <span><asp:Label runat="server" ID="mm2"></asp:Label></span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="contactmsg.aspx">
                                                <asp:Label runat="server" ID="mn3"></asp:Label> <i class="fa fa-reply pull-right"></i>
                                                <span><asp:Label runat="server" ID="mm3"></asp:Label></span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>

                                        <li class="dropdown-foot text-center">
                                            <a href="contactmsg.aspx">View All</a>
                                        </li>

                                    </ul>
                                </div>

                                <!-- Users -->
                                <div class="dropdown">
                                    <a href="#" id="users" data-toggle="dropdown" class="mhead-icon"><i class="fa fa-user"></i> <span class="label label-success"><asp:Label runat="server" ID="sreqcountdis1"></asp:Label></span></a>
                                    <!-- Dropdown -->
                                    <ul class="dropdown-menu drop-users" role="button" aria-labelledby="users">

                                        <!-- Dropdown menu head -->
                                        <li class="dropdown-head">
                                            Student Requests <span class="label label-success pull-right"><asp:Label runat="server" ID="sreqcountdis"></asp:Label></span>
                                        </li>
                                        <!-- Content -->
                                        <li>
                                            <a href="studentrequests.aspx">
                                                <!-- User details -->
                                                <div class="duser-content">
                                                    <asp:Label runat="server" ID="srnm1"></asp:Label>
                                                    <span><asp:Label runat="server" ID="srem1"></asp:Label></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="studentrequests.aspx">
                                                <div class="duser-content">
                                                    <asp:Label runat="server" ID="srnm2"></asp:Label>
                                                    <span><asp:Label runat="server" ID="srem2"></asp:Label></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="studentrequests.aspx">
                                                <div class="duser-content">
                                                    <asp:Label runat="server" ID="srnm3"></asp:Label>
                                                    <span><asp:Label runat="server" ID="srem3"></asp:Label></span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>

                                        <li class="dropdown-foot text-center">
                                            <a href="studentrequests.aspx">View All</a>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <form id="Form1" runat="server">
                        <div class="col-md-3 hidden-sm hidden-xs">
                            <!-- Head user -->
                            <div class="head-user dropdown pull-right">
                                <a href="#" data-toggle="dropdown" id="profile">


                                    <!-- User name -->
                                    Alexis <span class="label label-danger"><asp:Label runat="server" ID="msgcountdis1" ></asp:Label></span>
                                    <i class="fa fa-caret-down"></i>
                                </a>
                                <!-- Dropdown -->
                                <ul class="dropdown-menu" aria-labelledby="profile">
                                    <li><a href="#">Messages <span class="badge badge-danger pull-right"><asp:Label runat="server" ID="msgcountdis"></asp:Label></span></a></li>
                                    <li><a href="admin.aspx">Sign Out</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

            </div>


            <!-- Mainbar head ends -->

            <div class="main-content">
                <div class="container">

                    <div class="page-content">
                    
                        <!-- Heading -->
                        <div class="single-head">
                            <!-- Heading -->
                            <h3 class="pull-left"><i class="fa fa-users lblue"></i> Users</h3>
                            <!-- Bread crumbs -->
                            <div class="breads pull-right">
                                
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <!-- Users page -->
                        <div class="page-users">
                            <!-- Nav tab -->
                            <div class="page-tabs">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#ausers" class="br-lblue" data-toggle="tab"><i class="fa fa-user lblue"></i> Users</a></li>
                                    <li><a href="#addnew" class="br-red" data-toggle="tab"><i class="fa fa-plus red"></i> Add New</a></li>
                                    
                                </ul>
                                <!-- Tab panes -->
                                
                                <div class="tab-content">
                                <asp:Label runat="server" Text="Please select the Appropriate Check Box to perform required action" Font-Size="Small" ForeColor="Red" Visible="false" ID="erdis"></asp:Label>
                                    <div class="tab-pane fade active in" id="ausers">
                                        <!-- Users table -->
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="t1" runat="server">
                                                <tr class="active">
                                                    <th><input type="checkbox"></th>
                                                    <th>Username</th>
                                                    <th>Name</th>
                                                    <th>Email</th>
                                                    <th>Role</th>
                                                    <th>Action</th>
                                                </tr>
                                                
                                            </table>
                                        </div>

                                        <div class="clearfix"></div>
                                    </div>
                                    <!-- Add new user -->
                                    <div class="tab-pane fade" id="addnew">
                                        <h4>Add New User</h4>

                                            <form class="form-horizontal">        

                                            <div class="form-group">
                                                <label for="name" class="col-md-2 control-label">Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="sname" placeholder="Name" runat="server">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="username" class="col-md-2 control-label">Username</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="username" placeholder="Username" runat="server">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="email" class="col-md-2 control-label">Email</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="semail" placeholder="Email" runat="server">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="password" class="col-md-2 control-label">Password</label>
                                                <div class="col-md-10">
                                                    <input type="password" class="form-control" id="spass" placeholder="Password" runat="server">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label for="email" class="col-md-2 control-label">Role</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="usrl" placeholder="User Role" runat="server">
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <div class="col-md-offset-2 col-md-10">
                                                    <div class="checkbox">
                                                        <label>
                                                        
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <div class="col-md-offset-2 col-md-10">
                                                    <asp:Button runat="server" ID="addclick" CssClass="btn btn-info" Text="Add" OnClick="addbtncli"/>
                                                    <button type="reset" class="btn btn-default">Reset</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="tab-pane fade" id="search">

                                        <h4>Search Users</h4>
                                        <!-- Search users -->
                                        <div class="well">
                                            <h5>Search</h5>
                                            <p>Search users by name, email, phone, etc.,</p>
                                            <!-- Search form -->
                                            <form class="form-inline" role="form">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="search" placeholder="Type Something...">
                                                </div>
                                                <button type="submit" class="btn btn-default">Search</button>
                                            </form>
                                        </div>
                                        <div class="well">
                                            <!-- Advanced search -->
                                            <h5>Advanced Search</h5>
                                            <p>Search users by name, email, phone, etc.,</p>
                                            <form role="form">
                                                <div class="form-group">
                                                    <label for="name">Name</label>
                                                    <input type="text" class="form-control" id="name" placeholder="Enter name">
                                                </div>

                                                <div class="form-group">
                                                    <label for="email">Email address</label>
                                                    <input type="text" class="form-control" id="email" placeholder="Enter email">
                                                </div>

                                                <div class="form-group">
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" id="inlineCheckbox1" value="option1"> Basic
                                                    </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" id="inlineCheckbox2" value="option2"> VIP
                                                    </label>
                                                    <label class="checkbox-inline">
                                                        <input type="checkbox" id="inlineCheckbox3" value="option3"> Mod
                                                    </label>
                                                </div>

                                                <div class="form-group">
                                                    <label>Country</label>
                                                    <select class="form-control">
                                                        <option>USA</option>
                                                        <option>India</option>
                                                        <option>Canada</option>
                                                        <option>South Africa</option>
                                                        <option>China</option>
                                                    </select>
                                                </div>

                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox"> Include Banned Users?
                                                    </label>
                                                </div>
                                                <button type="submit" class="btn btn-default">Search</button>
                                                <button type="reset" class="btn btn-default">Reset</button>
                                            </form>
                                        </div>
                                    </div>
                                    </form>
                                    
                                </div> <!-- Tab panes End -->
                            </div>
                        </div> <!-- Users page End -->
                    </div>

                </div>
            </div>

        </div>
        <!-- Mainbar ends -->

        <div class="clearfix"></div>
    </div>

    <!-- Javascript files -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap JS -->
    <script src="js/bootstrap.min.js"></script>
    <!-- jQuery UI -->
    <script src="js/jquery-ui.min.js"></script>
    <!-- Date Time Picker JS -->
    <script src="js/bootstrap-datetimepicker.min.js"></script>
    <!-- Bootstrap wysihtml5 JS -->
    <script src="js/wysihtml5-0.3.0.js"></script>
    <script src="js/prettify.js"></script>
    <script src="js/bootstrap-wysihtml5.min.js"></script>
    <!-- Validate JS -->
    <script src="js/jquery.validate.js"></script>
    <!-- Form wizard steps  JS -->
    <script src="js/jquery.steps.min.js"></script>
    <!-- jQuery Knob -->
    <script src="js/jquery.knob.js"></script>
    <!-- jQuery slim scroll -->
    <script src="js/jquery.slimscroll.min.js"></script>
    <!-- Data Tables JS -->
    <script src="js/jquery.dataTables.min.js"></script>
    <!-- Pretty Photo JS -->
    <script src="js/jquery.prettyPhoto.js"></script>
    <!-- Rate It JS -->
    <script src="js/jquery.rateit.min.js"></script>
    <!-- jQuery full calendar -->
    <script src="js/fullcalendar.min.js"></script>
    <!-- jQuery gritter -->
    <script src="js/jquery.gritter.min.js"></script>
    <!-- jQuery gritter notification -->
    <script src="js/custom.notification.js"></script>
    <!-- Respond JS for IE8 -->
    <script src="js/respond.min.js"></script>
    <!-- HTML5 Support for IE -->
    <script src="js/html5shiv.js"></script>
    <!-- Custom JS -->
    <script src="js/custom.js"></script>

    <!-- Javascript for this page -->
    <!-- Javascript for this page -->

    <script type="text/javascript">

    </script>

</body>
</html>