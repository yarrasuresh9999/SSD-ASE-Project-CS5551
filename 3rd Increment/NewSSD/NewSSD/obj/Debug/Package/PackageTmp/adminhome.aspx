﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminhome.aspx.cs" Inherits="NewSSD.adminhome" %>

<!DOCTYPE html>
<html>
	<head>
		<!-- Title here -->
		<title>Dashboard - Alex Petria(admin) Page</title>
		<!-- Description, Keywords and Author -->
		<meta name="description" content="Your description">
		<meta name="keywords" content="Your,Keywords">
		<meta name="author" content="ResponsiveWebInc">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Styles -->
		<!-- Bootstrap CSS -->
		<link href="css/bootstrap.min1.css" rel="stylesheet">
		<!-- jQuery gritter -->
		<link href="css/jquery.gritter.css" rel="stylesheet">
		<!-- Font awesome CSS -->
		<link href="css/font-awesome.min.css" rel="stylesheet">
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
						<h1><a href="adminlog.html"><i class="fa fa-desktop br-red"></i>Alexis <span>UMKC Institute for Human Development</span></a></h1>
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
                                <li><a href="studentrequests.aspx"><i class="fa fa-user"></i>Student Requests</a></li>
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
										  <a href="#" id="users" data-toggle="dropdown" class="mhead-icon" ><i class="fa fa-user"></i> <span class="label label-success">5</span></a>
										  <!-- Dropdown -->
										  <ul class="dropdown-menu drop-users" role="button" aria-labelledby="users">
											
											<!-- Dropdown menu head -->
											<li class="dropdown-head">
												Users <span class="label label-success pull-right">5</span>
											</li>
											<!-- Content -->
											<li><a href="#">
												<!-- User image -->
												<img src="img/user1.png" alt="" class="img-responsive img-circle" />
												<!-- User details -->
												<div class="duser-content">
													Anjelina Jolie
													<span>Lorem ipsum dolor sit amet elit.</span>
												</div>
												<div class="clearfix"></div>
											</a></li>
											<li><a href="#">
												<img src="img/user2.png" alt="" class="img-responsive img-circle" />
												<div class="duser-content">
													Brad Pitt 
													<span>Lorem ipsum dolor sit amet elit.</span>
												</div>
												<div class="clearfix"></div>
											</a></li>
											<li><a href="#">
												<img src="img/user1.png" alt="" class="img-responsive img-circle" />
												<div class="duser-content">
													Al Pacino 
													<span>Lorem ipsum dolor sit amet elit.</span>
												</div>
												<div class="clearfix"></div>
											</a></li>
											
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
										Alexis <span class="label label-danger">5</span> 
										<i class="fa fa-caret-down"></i> 
									</a>
									<!-- Dropdown -->
									<ul class="dropdown-menu" aria-labelledby="profile">
									   
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
										
						<div class="row">
							<div class="col-md-8">
								<!-- Home chart widget -->
								<div class="widget">
									<div class="widget-head br-lblue">
										<h3 class="pull-left"><i class="fa fa-bar-chart-o"></i> Latest Report</h3>
										<div class="pull-right">
											<!-- Nav tabs -->
											<ul>
											  <li><a href="#c-one" data-toggle="tab" class="btn btn-default btn-xs">Visitors</a>&nbsp;</li>
											  <li><a href="#c-two" data-toggle="tab" class="btn btn-default btn-xs">Revenue</a>&nbsp;</li>
											  <li><a href="#c-three" data-toggle="tab" class="btn btn-default btn-xs">Growth</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="widget-body">
									
										<!-- Tab panes -->
										<div class="tab-content">
											<div class="tab-pane active in fade" id="c-one">
												<!-- Chart one --> 
												<div class="chart-one">
													<!-- Line chart placeholder -->
													<div id="m-line-chart"></div>
												</div>
											</div>
											<div class="tab-pane fade" id="c-two">												
												<!-- Chart two -->
												<div class="chart-two">
													<!-- Bar chart placeholder -->
													<div id="m-bar-chart"></div>
												</div>
											</div>
											<div class="tab-pane fade" id="c-three">
												<!-- Chart three -->
												<div class="chart-three">
													<!-- Real time chart placeholder -->
													<div id="m-real-chart"></div>
													<hr />
													<!-- Update interval for realtime chart -->
													Update Interval : <input id="updateInterval" type="text" class="form-control input-sm" value="">
													
												</div>
											</div>
										</div>
										
									</div>
								</div>					
							</div>
							<div class="col-md-4">
								<!-- Main area chart -->
								<div class="widget">
									<div class="widget-head br-red">
										<h3><i class="fa fa-desktop"></i> Latest Updates</h3>
									</div>
									<div class="widget-body">
										<!-- Sparkline chart -->
										<div class="m-spark-chart text-center">
											<div class="row">
												<div class="col-md-4 col-sm-6 col-xs-6">
													<div id="spark1"></div>
													<!-- Chart details -->
													<h5>1200 Visitors</h5>
												</div>
												<div class="col-md-4 col-sm-6 col-xs-6">
													<div id="spark2"></div>
													<!-- Chart details -->
													<h5>5000 Members</h5>
												</div>
												<div class="col-md-4 col-sm-12 col-xs-12">
													<div id="spark3"></div>
													<!-- Chart details -->
													<h5>8000 Bounce </h5>
												</div>
											</div>
										</div>
										<hr />
										<!-- Pie chart -->
										<div class="m-pie-chart">
											<div class="row">
												<div class="col-md-6 col-sm-6 col-xs-6">
													<!-- Pie chart placeholder -->
													<div id="m-pie-chart"></div>
												</div>
												<div class="col-md-6 col-sm-6 col-xs-6">
													<!-- Pie chart info -->
													<ul class="list-unstyled">
														<li><span class="badge badge-danger">5</span> &nbsp; <strong>Today's Revenue</strong></li>
														<li><span class="badge badge-success">8</span> &nbsp; <strong>Yesterday's Profit</strong></li>
														<li><span class="badge badge-info">4</span> &nbsp; <strong>Monday's Visitors</strong></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							
							</div>
						</div>
				
						<div class="knobs text-center">
							<div class="row">
								<div class="col-md-2 col-sm-6 col-xs-6">
									<!-- Knob item -->
									<div class="knob-item">
										<!-- Heading -->
										<h4>Today's Visitors</h4>
										<!-- Knob circle -->
										<input type="text" value="85" class="knob" data-fgColor="#f75353" data-angleArc="250" data-angleOffset="-125" data-bgColor="#e8e8e8" data-width="110" data-thickness=".1">
									</div>
								</div>
								<div class="col-md-2 col-sm-6 col-xs-6">
									<div class="knob-item">
										<h4>Today's Profit</h4>
										<input type="text" value="65" class="knob" data-fgColor="#32c8de" data-angleArc="250" data-angleOffset="-125" data-bgColor="#e8e8e8" data-width="110" data-thickness=".1">
									</div>
								</div>
								<div class="col-md-2 col-sm-6 col-xs-6">
									<div class="knob-item">
										<h4>Bounce Rate</h4>
										<input type="text" value="35" class="knob" data-fgColor="#51d466" data-angleArc="250" data-angleOffset="-125" data-bgColor="#e8e8e8" data-width="110" data-thickness=".1">
									</div>
								</div>
								<div class="col-md-2 col-sm-6 col-xs-6">
									<div class="knob-item">
										<h4>Total Members</h4>
										<input type="text" value="75" class="knob" data-fgColor="#cb79e6" data-angleArc="250" data-angleOffset="-125" data-bgColor="#e8e8e8" data-width="110" data-thickness=".1">
									</div>
								</div>
								<div class="col-md-4">

									<!-- Current status -->
									<div class="current-status">
										<div class="row">
											<div class="col-md-4 col-sm-4 col-xs-6">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Icon 
													<i class="fa fa-user lblue"></i> -->
													<!-- Heading -->
													<h6>Profit</h6>
													<h3>$50,000 <span class="fa fa-arrow-circle-up green"></span></h3>
												</div>
											</div>
											<div class="col-md-4 col-sm-4 col-xs-6">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Icon 
													<i class="fa fa-bar-chart-o lblue"></i> -->
													<!-- Heading -->
													<h6>Revenue</h6>
													<h3>55.89% <span class="fa fa-arrow-circle-down red"></span></h3>
												</div>
											</div>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Heading -->
													<h6>Customers</h6>
													<h3>11,000 <span class="fa fa-arrow-circle-up lblue"></span></h3>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-md-4 col-sm-4 col-xs-6">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Icon 
													<i class="fa fa-user lblue"></i> -->
													<!-- Heading -->
													<h6>Bounce Rate</h6>
													<h3>30.07% <span class="fa fa-arrow-circle-down lblue"></span></h3>
												</div>
											</div>
											<div class="col-md-4 col-sm-4 col-xs-6">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Icon 
													<i class="fa fa-bar-chart-o lblue"></i> -->
													<!-- Heading -->
													<h6>Visitors</h6>
													<h3>25,000 <span class="fa fa-arrow-circle-up green"></span></h3>
												</div>
											</div>
											<div class="col-md-4 col-sm-4 col-xs-12">
												<!-- Current status item -->
												<div class="current-status-item">
													<!-- Heading -->
													<h6>Orders</h6>
													<h3>5,000 <span class="fa fa-arrow-circle-down red"></span></h3>
												</div>
											</div>
										</div>
									</div>
								
								</div>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-md-4">
								
								<!-- Project widget -->
								<div class="widget projects-widget">
									
									<div class="widget-head br-green">
										<h3><i class="fa fa-desktop"></i> Projects</h3>
									</div>
									
									<div class="widget-body no-padd">
										
										<ul class="list-unstyled">

											<li>
											  <p>
												<!-- Checkbox -->
												<input value="check1" type="checkbox">
												<!-- Name -->
												<strong>Hospital Management System</strong>
											  </p>

											  <p class="p-meta">
												<!-- Due date & % Completed -->
												<span>Due : 26/2/2012 - 80% Done</span> 
											  </p>
												
												<!-- Progress bar -->
											  <div class="progress">
												  <div class="progress-bar progress-bar-info"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
													<span class="sr-only">90% Complete</span>
												  </div>
												</div>
											</li>


											<li>
											  <p>
												<!-- Checkbox -->
												<input value="check1" type="checkbox">
												<!-- Name -->
												<strong>School Download System</strong>
											  </p>

											  <p class="p-meta">
												<!-- Due date & % Completed -->
												<span>Due : 26/2/2012 - 80% Done</span> 
											  </p>

												 <!-- Progress bar -->
											<div class="progress">
												  <div class="progress-bar progress-bar-success"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
													<span class="sr-only">60% Complete</span>
												  </div>
												</div>
											</li>

											<li>
											  <p>
												<!-- Checkbox -->
												<input value="check1" type="checkbox">
												<!-- Name -->
												<strong>Question and Answers Script</strong>
											  </p>

											  <p class="p-meta">
												<!-- Due date & % Completed -->
												<span>Due : 26/2/2012 - 80% Done</span> 
											  </p>

											  <!-- Progress bar -->
											  <div class="progress">
												  <div class="progress-bar progress-bar-danger"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
													<span class="sr-only">70% Complete</span>
												  </div>
												</div>
											</li>

											<li>
											  <p>
												<!-- Checkbox -->
												<input value="check1" type="checkbox">
												<!-- Name -->
												<strong>Software Downloads Script</strong>
											  </p>

											  <p class="p-meta">
												<!-- Due date & % Completed -->
												<span>Due : 26/2/2012 - 80% Done</span> 
											  </p>

											   <!-- Progress bar -->
											   <div class="progress">
												  <div class="progress-bar progress-bar-warning"  role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
													<span class="sr-only">50% Complete</span>
												  </div>
												</div>
											</li>
											
										</ul>
										
									</div>
									
									
									<div class="widget-foot">
										<span class="pull-left"><i class="fa fa-time"></i> Last Update - 55 mins ago</span>
										<a href="#" class="btn btn-success btn-xs pull-right">Refresh</a>
										<div class="clearfix"></div>
									</div>
									
								</div>
								
							</div>
							
							<div class="col-md-4">
								
								<!-- Chat widget -->
								<div class="widget chat-widget">
									
									<div class="widget-head br-red">
										<h3><i class="fa fa-comments"></i> Chats</h3>
									</div>
									
									<div class="widget-body scroll">
										
										<ul class="list-unstyled">

										  <!-- Chat by us. Use the class "by-me". -->
										  <li class="by-me">
											<!-- Use the class "pull-left" in avatar -->
											<div class="avatar pull-left">
											  <img src="img/user1.png" alt=""/>
											</div>

											<div class="chat-content">
											  <!-- In meta area, first include "name" and then "time" -->
											  <div class="chat-meta">Ashok <span class="pull-right">3 hours ago</span></div>
											  Vivamus diam elit diam, consectetur dapibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li> 

										  <!-- Chat by other. Use the class "by-other". -->
										  <li class="by-other">
											<!-- Use the class "pull-right" in avatar -->
											<div class="avatar pull-right">
											  <img src="img/user2.png" alt=""/>
											</div>

											<div class="chat-content">
											  <!-- In the chat meta, first include "time" then "name" -->
											  <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
											  Vivamus diam elit diam, consectetur fconsectetur dapibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li>   

										  <li class="by-me">
											<div class="avatar pull-left">
											  <img src="img/user1.png" alt=""/>
											</div>

											<div class="chat-content">
											  <div class="chat-meta">Ashok <span class="pull-right">4 hours ago</span></div>
											  Vivamus diam elit diam, consectetur  dapibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li>  

										  <li class="by-other">
											<!-- Use the class "pull-right" in avatar -->
											<div class="avatar pull-right">
											  <img src="img/user2.png" alt=""/>
											</div>

											<div class="chat-content">
											  <!-- In the chat meta, first include "time" then "name" -->
											  <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
											  Vivamus diam elit diam, consectetur fpibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li> 

										  <li class="by-me">
											<div class="avatar pull-left">
											  <img src="img/user1.png" alt=""/>
											</div>

											<div class="chat-content">
											  <div class="chat-meta">Ashok <span class="pull-right">4 hours ago</span></div>
											  Vivamus diam  eget, Vivamus consectetur dapibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li>  

										  <li class="by-other">
											<!-- Use the class "pull-right" in avatar -->
											<div class="avatar pull-right">
											  <img src="img/user2.png" alt=""/>
											</div>

											<div class="chat-content">
											  <!-- In the chat meta, first include "time" then "name" -->
											  <div class="chat-meta">3 hours ago <span class="pull-right">Ravi</span></div>
											  Vivamus diam elit diam, consecsectetur dapibus adipiscing elit.
											  <div class="clearfix"></div>
											</div>
										  </li>

										</ul>
										
									</div>
									
									
									<div class="widget-foot">
										<form class="form-inline" role="form">
										  <div class="form-group">
											<input type="text" class="form-control" placeholder="Enter Message...">
										  </div>
										  <button type="submit" class="btn btn-danger btn-sm">Send</button>
										</form>
									</div>
									
								</div>
								
							</div>
							
							<div class="col-md-4">
								
								<!-- Tasks widget -->
								<div class="widget tasks-widget">
									
									<div class="widget-head br-lblue">
										<h3><i class="fa fa-tasks"></i> Tasks</h3>
									</div>
									
									<div class="widget-body no-padd scroll">
										
										<ul>
											 <!-- Checkbox - Task - Flag -->
											 <li class="task-important"> <input type="checkbox"> <span>Lorem dolor sit sit amet dolor feugiat sit consur.</span> </li>
											 <li class="task-normal"> <input type="checkbox"> <span>Duis dolor sit eut purus dolor feugiat sit ineuis.</span> </li>
											 <li class="task-pending"> <input type="checkbox"> <span>Mauris dolor sit adiin ipsum dolor feugiat posuere.</span> </li>
											 <li class="task-important"> <input type="checkbox"> <span>Ut non dolor sit feu sit amet dolor feugiat sit cquat.</span> </li>
											 <li class="task-normal"> <input type="checkbox"> <span>Duis dolor sit eut purus dolor feugt interum euis.</span> </li>
											 <li class="task-pending"> <input type="checkbox"> <span>Nullam dolor sit pla augue dolor feuiat comodo.</span> </li>
											 <li class="task-important"> <input type="checkbox"> <span>Vivamus dolor sit ali ondntum dolor feugiat sit ittis.</span> </li>
											 <li class="task-normal"> <input type="checkbox"> <span>Duis dolor sit eut purus dolor  sit interum euis.</span> </li>
											 <li class="task-pending"> <input type="checkbox"> <span>Duis dolor sit eut purus  feugiat sit interum euis.</span> </li>
										</ul>
										
									</div>
									
									<div class="widget-foot">
										<form class="form-inline" role="form">
										  <div class="form-group">
											<input type="text" class="form-control" placeholder="Enter Task Here...">
										  </div>
										  <button type="submit" class="btn btn-info btn-sm">Add Task</button>
										</form>
									</div>
									
								</div>
																
							</div>
														
						</div>
						
						<div class="row">
						
							<div class="col-md-7">
								<!-- Pages widget -->
								<div class="widget pages-widget">
									
									<div class="widget-head br-red">
										<h3><i class="fa fa-file"></i> Pages</h3>
									</div>
									
									<div class="widget-body no-padd">
										
										<div class="table-responsive">
											<table class="table table-bordered">
												<!-- Table heading -->
												<tr> 
													<th><input type="checkbox"></th>
													<th>Page Title</th>
													<th>File Size</th>
													<th>Status</th>
													<th>Sort</th>
													<th>Action</th>
												</tr>
												<tr>
													<!-- Check box -->
													<td><input type="checkbox"></td>
													<!-- Page name -->
													<td><a href="#">About Us</a></td>
													<!-- Page size -->
													<td>253.4 KB</td>
													<!-- Status -->
													<td><span class="badge badge-danger">R</span></td>
													<!-- Sort -->
													<td><a href="#"><i class="fa fa-chevron-up green"></i></a></td>
													<!-- Actions -->
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Contact Us</a></td>
													<td>213 KB</td>
													<td><span class="badge badge-success">A</span></td>
													<td><a href="#"><i class="fa fa-chevron-down red"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Dashboard</a></td>
													<td>1.24 MB</td>
													<td><span class="badge badge-warning">P</span></td>
													<td><a href="#"><i class="fa fa-chevron-up green"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Download</a></td>
													<td>30.00 MB</td>
													<td><span class="badge badge-danger">R</span></td>
													<td><a href="#"><i class="fa fa-chevron-down red"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Portfolio</a></td>
													<td>140 MB</td>
													<td><span class="badge badge-success">A</span></td>
													<td><a href="#"><i class="fa fa-chevron-up green"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Contact Us</a></td>
													<td>213 KB</td>
													<td><span class="badge badge-warning">P</span></td>
													<td><a href="#"><i class="fa fa-chevron-down red"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
												<tr>
													<td><input type="checkbox"></td>
													<td><a href="#">Dashboard</a></td>
													<td>1.24 MB</td>
													<td><span class="badge badge-danger">R</span></td>
													<td><a href="#"><i class="fa fa-chevron-up green"></i></a></td>
													<td>
														<a href="#"><i class="fa fa-edit lblue"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-share-square-o green"></i></a> &nbsp; 
														<a href="#"><i class="fa fa-trash-o red"></i></a>
													</td>
												</tr>
											</table>
										</div>
										
									</div>
									
									<div class="widget-foot">
										<span class="pull-left">
											<a href="#" class="btn btn-default btn-sm">Add New Page</a> &nbsp; 
											<a href="#" class="btn btn-danger btn-sm">Delete All</a>
										</span>
										<div class="pull-right">
											<!-- Pagination -->
											<ul class="pagination">
											  <li><a href="#">&laquo;</a></li>
											  <li><a href="#">1</a></li>
											  <li><a href="#">2</a></li>
											  <li><a href="#">3</a></li>
											  <li><a href="#">5</a></li>
											  <li><a href="#">&raquo;</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
									
								</div>
							
							</div>
							
							<div class="col-md-5">
								<!-- Contacts widget -->
								<div class="widget contacts-widget">
									
									<div class="widget-head br-purple">
										<h3><i class="fa fa-user"></i> Contacts</h3>
									</div>
									
									<div class="widget-body scroll">
										
										<ul class="list-unstyled">
										
											<!-- Alphabet with number of contacts -->
											<li class="contact-alpha">
												A <span class="badge badge-danger pull-right">30</span>
												<div class="clearfix"></div>
											</li>
											
											<!-- Single contact -->
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Akshay Kumar</strong>
														<small>(+1) 145-556-5848</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>
											
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user2.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Arun Babu</strong>
														<small>(+11) 425-576-9849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>

											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Ashok Ramesh</strong>
														<small>(+1) 245-556-2849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>

											<li class="contact-alpha">
												B <span class="badge badge-danger pull-right">10</span>
												<div class="clearfix"></div>
											</li>												
											
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Babu Reddy</strong>
														<small>(+1) 145-556-5848</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>
											
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user2.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Biswin Kumar</strong>
														<small>(+11) 425-576-9849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>

											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Balaji</strong>
														<small>(+1) 245-556-2849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>		

											<li class="contact-alpha">
												S <span class="badge badge-danger pull-right">10</span>
												<div class="clearfix"></div>
											</li>												
											
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Satish Kumar</strong>
														<small>(+1) 145-556-5848</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>
											
											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user2.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Siva Kumar</strong>
														<small>(+11) 425-576-9849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>

											<li class="c-list">
												<!-- Contact pic -->
												<div class="contact-pic">
													<a href="#"><img src="img/user1.png" alt="" class="img-responsive"/></a>
												</div>
												<!-- Contact details -->
												<div class="contact-details">
													<!-- Contact name and number -->
													<div class="pull-left">
														<strong>Sabari</strong>
														<small>(+1) 245-556-2849</small>
													</div>
													<!-- Call, Message and Email buttons -->
													<div class="pull-right">
														<a href="#" class="btn btn-danger btn-xs"><i class="fa fa-phone"></i></a>
														<a href="#" class="btn btn-info btn-xs"><i class="fa fa-envelope-o"></i></a>
														<a href="#" class="btn btn-success btn-xs"><i class="fa fa-comments"></i></a>
													</div>
													<div class="clearfix"></div>
												</div>
											</li>												
											
										</ul>
																				
									</div>
									
									<div class="widget-foot">
										<span class="pull-left">520 Contacts</span>
										<a href="#" class="btn btn-purple btn-xs pull-right">Add New Contact</a>
										<div class="clearfix"></div>
									</div>
									
								</div>
							
							</div>
						
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
		<script src="js/bootstrap.min1.js"></script>
		<!-- jQuery UI -->
		<script src="js/jquery-ui.min.js"></script>
		<!-- Date Time Picker JS -->
		<script src="js/bootstrap-datetimepicker.min.js"></script>	
		<!-- Bootstrap wysihtml5 JS -->		
		<script src="js/wysihtml5-0.3.0.js"></script>
		<script src="js/prettify.js"></script>
		<script src="js/bootstrap-wysihtml5.min.js"></script>
	
		<!-- jQuery flot -->
		<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/excanvas.min.js"></script><![endif]-->
		<script src="js/jquery.flot.min.js"></script>     
		<script src="js/jquery.flot.stack.min.js"></script>
		<script src="js/jquery.flot.pie.min.js"></script>
		<script src="js/jquery.flot.resize.min.js"></script>
		
		<!-- Validate JS -->
		<script src="js/jquery.validate.js"></script>
		<!-- Form wizard steps  JS -->
		<script src="js/jquery.steps.min.js"></script>
		<!-- jQuery Knob -->
		<script src="js/jquery.knob.js"></script>
		<!-- jQuery Sparklines -->
		<script src="js/jquery.sparklines.js"></script>
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
		
		<!-- Javascript for this page -->      
        <script type="text/javascript">
         
         <!-- Main line chart -->         
         $(function() {
			/* Chart data #1 */
			var d1 = [[0, 4], [1, 3.5], [2, 4.2], [3, 5.5],[4, 4.9], [5, 5], [6, 5.3], [7, 6],[8, 5.3], [9, 4], [10, 4], [11, 4.5],[12, 5], [13, 4]];
			/* Chart data #2 */
			var d2 = [[0, 2], [1, 1.5], [2, 2.2], [3, 3.5],[4, 2.9], [5, 3], [6, 3.3], [7, 4],[8, 3.3], [9, 2], [10, 2], [11, 2.5],[12, 3], [13, 2]];
			var options = {
               series: {
                  lines: {
                     show: true, fill: true, lineWidth:1, fillColor: { colors: [ { opacity: 0.05 }, { opacity: 0.15}] }
                  },
                  points: {
                     show: true, fill: true, lineWidth:2, radius:3, fillColor: "#fff"
                  },
				  shadowSize: 0
               },
               colors :["#32c8de","#51d466"],
               grid: {
                  hoverable: true, color: "#bbb", backgroundColor:"#fff" ,borderWidth:1, borderColor:"#e8e8e8", labelMargin:10
               },
               xaxis: {
				  ticks:12,
                  font: {
                        size: 11,
                        color: "#aaa"
                    }
               },
               yaxis: {
				  ticks: 4,
                  font: {
                        size: 11,
                        color: "#aaa"
                    }
               },
			   legend: {
				  backgroundOpacity:0,
				  noColumns:2,
				  labelBoxBorderColor: "#fff"
			   }
            };
			
			$("<div id='tooltip'></div>").css({
				position: "absolute",
				display: "none",
				"border-radius":"5px",
				padding: "0px 5px",
				color:"#999",
				"font-size":"11px",
				"background-color": "#fff",
				"border":"1px solid #ccc"
			}).appendTo("body");

			$("#m-line-chart").bind("plothover", function (event, pos, item) {
					if (item) {
						var x = item.datapoint[0].toFixed(2),
							y = item.datapoint[1].toFixed(2);

						$("#tooltip").html(x + ", " + y)
							.css({top: item.pageY+5, left: item.pageX+5})
							.fadeIn(200);
					} else {
						$("#tooltip").hide();
					}
			});

			
            <!-- Actual plotting -->
            $.plot("#m-line-chart", [ { data: d1, label: "Revenue"},{ data: d2, label: "Profit"}], options);
         });
		 
		 <!-- Line chart ends -->
		 
		 <!-- Bar chart starts -->
		 
		 $(function() {

			var data1 = [];
			for (var i = 0; i <= 20; i += 1) {
				data1.push([i, parseInt(Math.random() * 30)]);
			}

			var data2 = [];
			for (var i = 0; i <= 20; i += 1)
			data2.push([i, parseInt(Math.random() * 30)]);
		
			var stack = 0,
				bars = true,
				lines = false,
				steps = false;

			function plotWithOptions() {
				$.plot("#m-bar-chart", [ data1, data2 ], {
					series: {
						stack : stack,
						bars: {
							show: bars,
							barWidth: 0.6,
							lineWidth: 1,
							fill: true,
							fillColor: { colors: [ { opacity: 0.9 }, { opacity: 0.5}] }
						}
					},
					colors: ["#3FB8CA", "#2BB3C7"],
				    grid: {
					     hoverable: true, color: "#bbb", backgroundColor:"#fff" ,borderWidth:1, borderColor:"#e8e8e8", labelMargin:15
					},
					xaxis: {
					    ticks:8,
					    font: {
							size: 11,
							color: "#aaa"
						}
					},
					yaxis: {
						ticks: 4,
						font: {
							size: 11,
							color: "#aaa"
						}
					}
				});
			}

			plotWithOptions();

		});

		<!-- Bar chart ends -->
		
		
		<!-- Realtime chart starts -->

		$(function () {
			// we use an inline data source in the example, usually data would
			// be fetched from a server
			var data = [], totalPoints = 300;
			function getRandomData() {
				if (data.length > 0)
					data = data.slice(1);

				// do a random walk
				while (data.length < totalPoints) {
					var prev = data.length > 0 ? data[data.length - 1] : 50;
					var y = prev + Math.random() * 10 - 5;
					if (y < 10)
						y = 10;
					if (y > 70)
						y = 70;
					data.push(y);
				}

				// zip the generated y values with the x values
				var res = [];
				for (var i = 0; i < data.length; ++i)
					res.push([i, data[i]])
				return res;
			}

			// setup control widget
			var updateInterval = 100;
			$("#updateInterval").val(updateInterval).change(function () {
				var v = $(this).val();
				if (v && !isNaN(+v)) {
					updateInterval = +v;
					if (updateInterval < 1)
						updateInterval = 1;
					if (updateInterval > 2000)
						updateInterval = 2000;
					$(this).val("" + updateInterval);
				}
			});

			// setup plot
			var options = {
				series: { shadowSize: 0 }, // drawing is faster without shadows
				lines: {fill: true, lineWidth:1},
				colors: ["#51d466"],
				grid: {
					hoverable: false, color: "#bbb", backgroundColor:"#fff" ,borderWidth:1, borderColor:"#e8e8e8", labelMargin:15
				},
				xaxis: {
					ticks:8,
					font: {
						size: 11,
							color: "#aaa"
					}
				},
				yaxis: {
					ticks: 4,
					font: {
						size: 11,
						color: "#aaa"
					}
				}
			};
			var plot = $.plot($("#m-real-chart"), [ getRandomData() ], options);

			function update() {
				plot.setData([ getRandomData() ]);
				// since the axes don't change, we don't need to call plot.setupGrid()
				plot.draw();
				
				setTimeout(update, updateInterval);
			}
			update();
			
		});

		<!-- Realtime charts ends -->
		
		<!-- Pie chart start -->
		
		$(function () {
		
			var data = [],
			series = 3;

			for (var i = 0; i < series; i++) {
				data[i] = {
					data: Math.floor((Math.random()*10)+1) + 1
				}
			}

			var placeholder = $("#m-pie-chart");

			placeholder.unbind();
				
			$.plot(placeholder, data, {
				series: {
					pie: { 
						show: true,
						innerRadius:0.6,
						label: {
							show: false
						}
					}
				},
				colors: ["#f75353","#51d466","#32c8de"],
				grid: {hoverable: false},
				legend: {
					show: false
				}
			});


		});
		<!-- Pie chart ends -->
		
		/* ****************************************** */
		/* Main area sparkline */
		/* ****************************************** */

		$("#spark1").sparkline([8,11,9,12,10,9,13,11,12,11,10,12,11,], {
			type: 'bar',
			height: '30',
			barWidth: 4,
			barColor: '#f75353'});

		$("#spark2").sparkline([8,11,9,12,10,9,13,11,12,11,10,12,11,], {
			type: 'bar',
			height: '30',
			barWidth: 4,
			barColor: '#51d466'});
			
		$("#spark3").sparkline([8,11,9,12,10,9,13,11,12,11,10,12,11,], {
			type: 'bar',
			height: '30',
			barWidth: 4,
			barColor: '#32c8de'});	
			
		</script>
		<!-- Custom JS -->
		<script src="js/custom.js"></script>
		
	</body>	
</html>