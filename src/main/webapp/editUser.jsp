<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 2019-04-23
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
Created by IntelliJ IDEA.
User: christophehabineza
Date: 2019-04-22
Time: 10:30
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>All Users| Blue Group</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Ionicons -->
    <link rel="stylesheet" href="css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/AdminLTE.min.css">
    <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
          page. However, you can choose any other skin. Make sure you
          apply the skin class to the body tag so the changes take effect. -->
    <link rel="stylesheet" href="css/skin-blue.min.css">
    <link rel="stylesheet" href="css/dashboardpage.css">
    <link rel="stylesheet" href="css/users.css">
    <link href="css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="css/Team.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <!-- Main Header -->
    <header class="main-header">

        <!-- Logo -->
        <a href="#" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini">TASKME</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>TASKME</b></span>
        </a>

        <!-- Header Navbar -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- User Account Menu -->
                    <li class="dropdown user user-menu">
                        <!-- Menu Toggle Button -->
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <!-- The user image in the navbar-->
                            <img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-512.png"
                                 class="user-image" alt="User Image">
                            <!-- hidden-xs hides the username on small devices so only the image appears. -->
                            <span class="hidden-xs">${currentUser.firstname}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- The user image in the menu -->
                            <li class="user-header">
                                <img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-512.png"
                                     class="img-circle" alt="User Image">

                                <p>
                                    Welcome, ${currentUser.firstname} ${currentUser.lastname}

                                    <c:forEach items="${currentUserRoles}" var="role">
                                        <small><c:out value="${role.name} here |"> </c:out></small>
                                    </c:forEach>

                                </p>
                            </li>
                            <!-- Menu Body -->
                            <li class="user-body">
                                <div class="row">
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Team</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#">Tasks</a>
                                    </div>
                                    <div class="col-xs-4 text-center">
                                        <a href="#"></a>
                                    </div>
                                </div>
                                <!-- /.row -->
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <a href="#" class="btn btn-default btn-flat">Profile</a>
                                </div>
                                <div class="pull-right">
                                    <a href="<c:url value="logout"/>" class="btn btn-default btn-flat">Sign out</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <!-- Control Sidebar Toggle Button -->
                    <li>
                        <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel (optional) -->
            <div id="profilebtn" class="user-panel">
                <div class="pull-left image">
                    <img src="https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-group-512.png"
                         class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>${currentUser.firstname}</p>
                    <!-- Status -->
                    <!-- <a href="#"><i class="fa fa-circle text-success"></i> </a> -->
                </div>
            </div>

            <!-- Sidebar Menu -->
            <ul class="sidebar-menu" data-widget="tree">
                <li class="header">DASHBOARD</li>
                <!-- Optionally, you can add icons to the links -->
                <li class="active sidebarItem" id="taskSideBarItem">
                    <a href="#"><i class="fa fa-folder"></i> <span>Tasks</span></a>
                    <div class="sidebarsubItem ">
                        <ul>
                            <li class="active" id="taskViewAllBar"> View All Tasks</li>
                            <li id="taskViewMineBar" style="display: none">View My Task</li>
                            <li id="taskAddBar" style="display: none">+Add New Tas</li>

                        </ul>
                    </div>
                </li>

                <li class="sidebarItem" id="teamSideBarItem">
                    <a href="#"><i class="fa fa-folder"></i> <span>Teams</span></a>
                    <div class="sidebarsubItem ">
                        <ul>
                            <li class="active" id="teamviewAllBar">View All Teams</li>
                            <li id="teamvieMineBar">View My Team Details</li>
                            <li id="teamAddBar">+Add New Team</li>

                        </ul>
                    </div>
                </li>


                <li class="sidebarItem" id="userSideBarItem">
                    <a href="#"><i class="fa fa-folder"></i> <span>Users</span></a>
                    <div class="sidebarsubItem ">
                        <ul>
                            <li class="active" id="usersviewAllBar">
                                <a href="<c:url value="users"/> ">View All Users</a></li>
                            <li id="userAddBar"><a href="<c:url value="adduser"/> ">+Add New User</a></li>

                        </ul>
                    </div>
                </li>

            </ul>
            <!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Edit user ${editUser.firstname} ${editUser.lastname}
                </br>
                <small> Task Management System</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content container-fluid">

            <!--------------------------
              | Your Page Content Here |
              -------------------------->

            <div class="col-md-12">
                <!-- general form elements -->
                <div class="box box-primary">
                    <!-- /.box-header -->
                    <!-- form start -->
                    <form role="form" action="users" method="post">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input name="uname" type="text" class="form-control" id="username" value="${editUser.username}" readonly>
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input name="pwd" type="password" class="form-control" id="password" value="${editUser.password}">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputFile">Firstname</label>
                                <input name="fname" type="text" class="form-control" id="exampleInputFile" value="${editUser.firstname}">
                            </div>
                            <div class="form-group">
                                <label for="lastname">Lastname</label>
                                <input name="lname" type="text" class="form-control" id="lastname" value="${editUser.lastname}">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone</label>
                                <input name="phone" type="text" class="form-control" id="phone" value="${editUser.phone}">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input name="email" type="email" class="form-control" id="email" value="${editUser.email}">
                            </div>

                            <div class="form-group">
                                <label for="location">Location</label>
                                <input name="location" type="text" class="form-control" id="location" value="${editUser.location}">
                            </div>

<%--                            <div class="form-group">--%>
<%--                                <label>Roles</label>--%>
<%--                                <select class="form-control select2" style="width: 100%;">--%>
<%--                                    <c:forEach items="${editUser.role}" var="role">--%>
<%--                                        <option >${role.name}</option>--%>
<%--                                    </c:forEach>--%>
<%--                                </select>--%>
<%--                            </div>--%>
                        </div>
                        <!-- /.box-body -->
                    </form>
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <a href="<c:url value="delete"/>?id=${editUser.id} " type="submit" class="btn btn-danger">Delete</a>
                    </div>

                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    <footer class="main-footer">
        <!-- To the right -->
        <div class="pull-right hidden-xs">
            TASKME Application
        </div>
        <!-- Default to the left -->
        <strong>Copyright &copy; 2019 <a href="#">Blue Group</a>.</strong> All rights reserved.
    </footer>

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
            <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
            <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
            <!-- Home tab content -->
            <div class="tab-pane active" id="control-sidebar-home-tab">
                <h3 class="control-sidebar-heading">Recent Activity</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                            <div class="menu-info">
                                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                <p>Will be 23 on April 24th</p>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

                <h3 class="control-sidebar-heading">Tasks Progress</h3>
                <ul class="control-sidebar-menu">
                    <li>
                        <a href="javascript:;">
                            <h4 class="control-sidebar-subheading">
                                Custom Template Design
                                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
                            </h4>

                            <div class="progress progress-xxs">
                                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                            </div>
                        </a>
                    </li>
                </ul>
                <!-- /.control-sidebar-menu -->

            </div>
            <!-- /.tab-pane -->
            <!-- Stats tab content -->
            <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
            <!-- /.tab-pane -->
            <!-- Settings tab content -->
            <div class="tab-pane" id="control-sidebar-settings-tab">
                <form method="post">
                    <h3 class="control-sidebar-heading">General Settings</h3>

                    <div class="form-group">
                        <label class="control-sidebar-subheading">
                            Report panel usage
                            <input type="checkbox" class="pull-right" checked>
                        </label>

                        <p>
                            Some information about this general settings option
                        </p>
                    </div>
                    <!-- /.form-group -->
                </form>
            </div>
            <!-- /.tab-pane -->
        </div>
    </aside>
    <!-- /.control-sidebar -->
    <!-- Add the sidebar's background. This div must be placed
    immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="js/jquery.min.js"></script>
<script src="js/scripts/dataTables.responsive.min.js" type="text/javascript"></script>
<script src="js/scripts/jquery.dataTables.min.js" type="text/javascript"></script>
<!-- Bootstrap 3.3.7 -->
<script src="js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="js/adminlte.min.js"></script>
<!-- Page's css -->
<script src="js/dashboardpage.js"></script>
<script src="js/users.js"></script>
<script src="js/task/add-task.js" type="text/javascript"></script>
<script src="js/task/task-list.js" type="text/javascript"></script>
<script src="js/team.js"></script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
     Both of these plugins are recommended to enhance the
     user experience. -->
</body>
</html>