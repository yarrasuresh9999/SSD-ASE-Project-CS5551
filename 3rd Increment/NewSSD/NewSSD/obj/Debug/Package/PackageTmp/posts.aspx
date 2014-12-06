﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="posts.aspx.cs" Inherits="NewSSD.posts" %>


<!DOCTYPE html>
<html>
<head>
    <!-- Title here -->
    <title>Posts - Barnie</title>
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
                    <h1><a href="index.html"><i class="fa fa-desktop br-red"></i> Barnie <span>It's Legendary</span></a></h1>
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
                            <li><a href="adminhome.aspx" class="active"><i class="fa fa-desktop"></i> Dashboard</a></li>
                            <li><a href="users.html"><i class="fa fa-user"></i> Users</a></li>
                            <li><a href="srequests.html"><i class="fa fa-user"></i>Student Requests</a></li>
                            <li><a href="sprofiles.html"><i class="fa fa-bar-chart-o"></i>Student Profiles</a></li>
                            <li><a href="posts.aspx"><i class="fa fa-edit"> </i>Posts</a></li>
                            <li><a href="vappointments.html"><i class="fa fa-bell"> </i>View Appointments</a></li>
                            <li><a href="apappointments.html"><i class="fa fa-edit"> </i>Approve Appointments</a></li>
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
                                <div class="dropdown">
                                    <a href="#" id="notifications" data-toggle="dropdown" class="mhead-icon"><i class="fa fa-bell"></i> <span class="label label-info">5</span></a>
                                    <!-- Dropdown -->
                                    <ul class="dropdown-menu" role="button" aria-labelledby="notifications">

                                        <!-- Dropdown menu head -->
                                        <li class="dropdown-head">
                                            Notifications <span class="label label-info pull-right">5</span>
                                        </li>
                                        <!-- Content -->
                                        <li>
                                            <a href="#">
                                                <!-- Colored icon with text and time -->
                                                <i class="fa fa-user"></i> New User Registered <b class="pull-right">5 mins ago</b>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-shopping-cart"></i> New Order for Dress <b class="pull-right">10 mins ago</b>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-sign-out"></i> User Ravi Kumar Sign Out <b class="pull-right">20 hr ago</b>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-envelope"></i> New Message from Ravi <b class="pull-right">1 day ago</b>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-laptop"></i> Full Backup Completed <b class="pull-right">2 day ago</b>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>

                                        <li class="dropdown-foot text-center">
                                            <a href="#">View All</a>
                                        </li>

                                    </ul>
                                </div>

                                <!-- Messages -->
                                <div class="dropdown">
                                    <a href="#" id="messages" data-toggle="dropdown" class="mhead-icon"><i class="fa fa-envelope"></i> <span class="label label-danger">5</span></a>
                                    <ul class="dropdown-menu" role="button" aria-labelledby="messages">

                                        <!-- Dropdown menu head -->
                                        <li class="dropdown-head">
                                            Messages <span class="label label-danger pull-right">5</span>
                                        </li>
                                        <!-- Content -->
                                        <li>
                                            <a href="#">
                                                <!-- Title -->
                                                Hello How are you? <i class="fa fa-reply pull-right"></i>
                                                <!-- Para -->
                                                <span>Lorem ipsum dolor sit amet something elit.</span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                What are you doing today? <i class="fa fa-reply pull-right"></i>
                                                <span>Lorem ipsum dolor sit amet something elit.</span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                Why don't you come here? <i class="fa fa-reply pull-right"></i>
                                                <span>Lorem ipsum dolor sit amet something elit.</span>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>

                                        <li class="dropdown-foot text-center">
                                            <a href="#">View All</a>
                                        </li>

                                    </ul>
                                </div>

                                <!-- Users -->
                                <div class="dropdown">
                                    <a href="#" id="users" data-toggle="dropdown" class="mhead-icon"><i class="fa fa-user"></i> <span class="label label-success">5</span></a>
                                    <!-- Dropdown -->
                                    <ul class="dropdown-menu drop-users" role="button" aria-labelledby="users">

                                        <!-- Dropdown menu head -->
                                        <li class="dropdown-head">
                                            Users <span class="label label-success pull-right">5</span>
                                        </li>
                                        <!-- Content -->
                                        <li>
                                            <a href="#">
                                                <!-- User image -->
                                                <img src="img/user1.png" alt="" class="img-responsive img-circle" />
                                                <!-- User details -->
                                                <div class="duser-content">
                                                    Anjelina Jolie
                                                    <span>Lorem ipsum dolor sit amet elit.</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="img/user2.png" alt="" class="img-responsive img-circle" />
                                                <div class="duser-content">
                                                    Brad Pitt
                                                    <span>Lorem ipsum dolor sit amet elit.</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="img/user1.png" alt="" class="img-responsive img-circle" />
                                                <div class="duser-content">
                                                    Al Pacino
                                                    <span>Lorem ipsum dolor sit amet elit.</span>
                                                </div>
                                                <div class="clearfix"></div>
                                            </a>
                                        </li>

                                        <li class="dropdown-foot text-center">
                                            <a href="#">View All</a>
                                        </li>

                                    </ul>
                                </div>

                            </div>
                            <div class="clearfix"></div>
                        </div>


                        <div class="col-md-3 hidden-sm hidden-xs">
                            <!-- Head user -->
                            <div class="head-user dropdown pull-right">
                                <a href="#" data-toggle="dropdown" id="profile">


                                    <!-- User name -->
                                    ashokram <span class="label label-danger">5</span>
                                    <i class="fa fa-caret-down"></i>
                                </a>
                                <!-- Dropdown -->
                                <ul class="dropdown-menu" aria-labelledby="profile">
                                    <li><a href="#">View/Edit Profile <span class="badge badge-info pull-right">6</span></a></li>
                                    <li><a href="#">Messages <span class="badge badge-danger pull-right">5</span></a></li>
                                    <li><a href="#">Sign Out</a></li>
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
                            <h3 class="pull-left"><i class="fa fa-tags green"></i> Posts</h3>
                            <!-- Bread crumbs -->
                            <div class="breads pull-right">
                                <strong>Nav</strong> : <a href="#">Home</a> / <a href="#">Sign</a> / Home
                            </div>
                            <div class="clearfix"></div>
                        </div>

                        <!-- Posts page -->
                        <div class="page-posts">
                            <!-- Nav tabs -->
                            <div class="page-tabs">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#posts" class="br-lblue" data-toggle="tab"><i class="fa fa-tags lblue"></i> Posts</a></li>
                                    <li><a href="#postnew" class="br-red" data-toggle="tab"><i class="fa fa-tag red"></i> Make Post</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="posts">
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th><input type='checkbox' value='check1' /></th>
                                                        <th>Title</th>
                                                        <th>Author</th>
                                                        <th>Date</th>
                                                        <th>Status</th>
                                                        <th>Control</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>23/12/2013</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>28/12/2013</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>30/12/2013</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>31/12/2013</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>01/01/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</a></td>
                                                        <td>Ashok</td>
                                                        <td>08/01/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</td>
                                                        <td>Ashok</td>
                                                        <td>20/01/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</td>
                                                        <td>Ashok</td>
                                                        <td>26/01/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</td>
                                                        <td>Ashok</td>
                                                        <td>11/02/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td><input type='checkbox' value='check1' /></td>
                                                        <td><a href="#">Vestibulum lacus turpisac viverra id</td>
                                                        <td>Ashok</td>
                                                        <td>14/02/2014</td>
                                                        <td>Published</td>
                                                        <td>
                                                            <button class="btn btn-xs btn-danger"><i class="fa fa-pencil"></i> </button>
                                                            <button class="btn btn-xs btn-info"><i class="fa fa-times"></i> </button>
                                                            <button class="btn btn-xs btn-success"><i class="fa fa-trash-o"></i> </button>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div><!-- Table responsive end -->

                                        <ul class="pagination pull-right">
                                            <li><a href="#">&laquo;</a></li>
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">4</a></li>
                                            <li><a href="#">5</a></li>
                                            <li><a href="#">&raquo;</a></li>
                                        </ul>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="tab-pane fade" id="postnew">
                                        <!-- Heading -->
                                        <h4>Make Post</h4>
                                        <form class="form-horizontal" role="form">
                                            <!-- Post title area -->
                                            <div class="form-group">
                                                <label for="title" class="col-md-2 control-label">Post Title</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="title" placeholder="Enter Title">
                                                </div>
                                            </div>
                                            <!-- Category -->
                                            <div class="form-group">
                                                <label for="dropdown" class="col-md-2 control-label">Category</label>
                                                <div class="col-md-10">
                                                    <select class="form-control">
                                                        <option>General</option>
                                                        <option>Latest</option>
                                                        <option>Health</option>
                                                        <option>Sports</option>
                                                        <option>Others</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- Post tag area -->
                                            <div class="form-group">
                                                <label for="tag" class="col-md-2 control-label">Post Content</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="title" placeholder="Enter Tag">
                                                </div>
                                            </div>
                                            <!-- Post content area -->
                                            <div class="form-group">
                                                <label for="content" class="col-md-2 control-label">Post Content</label>
                                                <div class="col-md-10">
                                                    <textarea class="form-control" rows="8" name="input" placeholder="Enter Comments"></textarea>
                                                </div>
                                            </div>
                                            <!-- Button -->
                                            <div class="form-group">
                                                <div class="col-md-offset-2 col-md-10">
                                                    <div class="pull-left">Word Count : 253</div>
                                                    <div class="pull-right">
                                                        <!-- Buttons -->
                                                        <button class="btn btn-default">Save Draft</button>
                                                        <button class="btn btn-info">Publish</button>
                                                        <button class="btn btn-danger">Trash</button>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- Posts page end -->

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