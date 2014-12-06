<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentgoals.aspx.cs" Inherits="NewSSD.studentgoals" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <!-- Title here -->
    <title>Barnie</title>
    <!-- Description, Keywords and Author -->
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your,Keywords">
    <meta name="author" content="ResponsiveWebInc">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Styles -->
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-datetimepicker.min.css" rel="Stylesheet">
    <link href="css/jquery-ui.css" rel="stylesheet" >
    <link href="css/rateit.css" rel="stylesheet" >
    <link href="css/less-style.css" rel="stylesheet" >
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
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
              ['Task', 'Hours per Day'],
              ['Work', 11],
              ['Eat', 2],
              ['Commute', 2],
              ['Watch TV', 2],
              ['Sleep', 7],
              ['driving', 40]
              
            ]);

            var options = {
                title: 'My Daily Activities',
                pieHole: 0.4,
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart.draw(data, options);
        }
    </script>

</head>

<body>
<form runat="server">
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
                            <li><a href="studentlog.html"><i class="fa fa-desktop"></i> Dashboard</a></li>
                            <li><a href="sannouncments.html"><i class="fa fa-comments"> </i>Announcments</a></li>
                            <li class="has_submenu">
                                <a href="#"><i class="fa fa-bar-chart-o"></i>Set Goals <span class="nav-caret fa fa-caret-down"></span></a>
                                <!-- Submenu -->
                                <ul class="list-unstyled">
                                    <li><a href="sgoals.html"><i class="fa fa-angle-double-right"></i>Goals </a></li>
                                    <li><a href="studentcvalues.html"><i class="fa fa-angle-double-right"></i>Core Values</a></li>

                                </ul>
                            </li>
                            <li><a href="stasks.html" class="active"><i class="fa fa-edit"></i>Tasks</a></li>
                            <li><a href="sappbooking.html"><i class="fa fa-bell"></i>Schedule Appointment</a></li>
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
                            <h3 class="pull-left"><i class="fa fa-desktop purple"></i> Your Page</h3>
                            <!-- Bread crumbs -->
                            <div class="breads pull-right">
                                <strong>Nav</strong> : <a href="#">Home</a> / <a href="#">Sign</a> / Home
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- Goals page -->
                        <div class="page-users">
                            <!-- Nav tab -->
                            <div class="page-tabs">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#ausers" class="br-lblue" data-toggle="tab"><i class="fa fa-user lblue"></i>Goals</a></li>
                                    <li><a href="#addnew" class="br-red" data-toggle="tab"><i class="fa fa-plus red"></i> Add Goals</a></li>
                                    <li><a href="#search" class="br-green" data-toggle="tab"><i class="fa fa-search green"></i> Stats</a></li>
                                </ul>
                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div class="tab-pane fade active in" id="ausers">
                                        <!-- Users table -->
                                        <div class="table-responsive">
                                            <table class="table table-bordered">
                                                <tr class="active">
                                                    <th><input type="checkbox"></th>
                                                    <th>Goal Name</th>
                                                    <th>Core Value</th>
                                                    <th>Priority</th>
                                                    <th>Magnitude</th>
                                                    <th>Priority</th>
                                                    <th>Action</th>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>arska.kram.1990</td>
                                                    <td>Arska Kumar</td>
                                                    <td><a href="mailto:arska.kram.1990@gmail.com">arska.kram.1990@gmail.com</a></td>
                                                    <td>25.2.1990</td>
                                                    <td>Moderator</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>ska.kakma</td>
                                                    <td>Ska Kakma</td>
                                                    <td><a href="mailto:ska.kakma@gmail.com">ska.kakma@gmail.com</a></td>
                                                    <td>13.5.2005</td>
                                                    <td>Admin</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>mundri.packoda</td>
                                                    <td>Mundri Packoda</td>
                                                    <td><a href="mailto:mundri.packoda@gmail.com">mundri.packoda@gmail.com</a></td>
                                                    <td>12.4.2004</td>
                                                    <td>Author</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>james.bond.007</td>
                                                    <td>James Bond</td>
                                                    <td><a href="mailto:james.bond.007@gmail.com">james.bond.007@gmail.com</a></td>
                                                    <td>18.6.2003</td>
                                                    <td>Temp</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>billa.boy</td>
                                                    <td>Billa Boy</td>
                                                    <td><a href="mailto:billa.boy@gmail.com">billa.boy@gmail.com</a></td>
                                                    <td>09.2.2013</td>
                                                    <td>User</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>kattu.poochi.2013</td>
                                                    <td>Kattu Poochi</td>
                                                    <td><a href="mailto:kattu.poochi.2013@gmail.com">kattu.poochi.2013@gmail.com</a></td>
                                                    <td>18.12.1999</td>
                                                    <td>Admin</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>arska.kram.1990</td>
                                                    <td>Arska Kumar</td>
                                                    <td><a href="mailto:arska.kram.1990@gmail.com">arska.kram.1990@gmail.com</a></td>
                                                    <td>22.12.2000</td>
                                                    <td>Author</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><input type="checkbox"></td>
                                                    <td>mamu.mami.1990</td>
                                                    <td>Mamu Mami</td>
                                                    <td><a href="mailto:mamu.mami.1990@gmail.com">mamu.mami.1990@gmail.com</a></td>
                                                    <td>15.4.1994</td>
                                                    <td>User</td>
                                                    <td>
                                                        <a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope"></i></a>
                                                        <a href="#" class="btn btn-danger btn-xs"><i class="fa fa-trash-o"></i></a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>

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
                                    <!-- Add new user -->
                                    <div class="tab-pane fade" id="addnew">
                                        <h4>Add New Goal</h4>

                                        <form class="form-horizontal" role="form">

                                            <div class="form-group">
                                                <label for="goalname" class="col-md-2 control-label">Goal Name</label>
                                                <div class="col-md-10">
                                                    <input type="text" class="form-control" id="goal_name" placeholder="Goal Name">
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label for="goaltype" class="col-md-2 control-label">Goal Type</label>
                                                <div class="dropdown">
                                                    <select name="goal_type">
                                                        <option value="#">Pick Goal Type</option>
                                                        <option value="short_g">Short term Goal</option>
                                                        <option value="long_g">Long Tern Goal</option>
                                                        <option value="acad_g">Academic Goal</option>
                                                        <option value="car_g">Career Goal</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group">

                                                <label for="coreval" class="col-md-2 control-label">Core Value</label>
                                                <div class="dropdown">
                                                    <select name="core_value">
                                                        <option value="#">Love </option>
                                                        <option value="short_g">Education</option>
                                                        <option value="long_g">Relationship</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label for="Magnitude" class="col-md-2 control-label">Magnitude</label>
                                                <div class="dropdown">
                                                    <select name="magnitude">
                                                        <option value="Easy">Easy</option>
                                                        <option value="Doable">Doable</option>
                                                        <option value="Challenging">Challenging</option>
                                                        <option value="Daunting">Daunting</option>
                                                        <option value="Audacious">Audacious</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="form-group">

                                                <label for="Priority" class="col-md-2 control-label">Priority</label>
                                                <div class="dropdown">
                                                    <select name="magnitude">
                                                        <option value="Easy">Low</option>
                                                        <option value="Doable">Medium</option>
                                                        <option value="Challenging">High</option>

                                                    </select>
                                                </div>
                                            </div>



                                            <div class="form-group">
                                                <label for="due_date" class="col-md-2 control-label">Due Date</label>
                                                <div id="datetimepicker1" class="input-append input-group dtpicker">
                                                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                                        </asp:ToolkitScriptManager>
                                                        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                                                        <asp:CalendarExtender ID="CalendarExtender1" TargetControlID="txtStartDate" runat="server" />

                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="goal_note" class="col-md-2 control-label">Goal Notes</label>
                                                <div class="col-lg-10">
                                                    Why do you want to acheive this goal?<textarea class="form-control" rows="3" placeholder="Breifly tell about why you want to acheive this goal" id="notes"></textarea>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label for="radio" class="col-md-2 control-label">Smart Goal</label>
                                                <div class="col-md-offset-2 col-md-10">
                                                    
                                                </div>

                                            </div>


                                            <div class="form-group">
                                                <div class="col-md-offset-2 col-md-10">
                                                    <button type="submit" class="btn btn-info">Add</button>
                                                    <button type="reset" class="btn btn-default">Reset</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                    <div class="tab-pane fade" id="search">

                                        <h4>Search Users</h4>
                                        <!-- Search users -->
                                        <div id="donutchart" style="width: 900px; height: 500px;"></div>
                                       
                                </div> <!-- Tab panes End -->
                            </div>
                        </div> <!-- Goal page End -->

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

        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        </form>
</body>
</html>