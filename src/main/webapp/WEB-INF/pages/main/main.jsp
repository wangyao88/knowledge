<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>来答题啦-首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="来答题啦,首页">
	<meta http-equiv="description" content="来答题啦-首页界面">
	<!-- Mobile specific metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <!-- Force IE9 to render in normal mode -->
        <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
        <meta name="author" content="SuggeElson" />
        <meta name="description" content="sprFlat admin template - new premium responsive admin template. This template is designed to help you build the site administration without losing valuable time.Template contains all the important functions which must have one backend system.Build on great twitter boostrap framework"
        />
        <meta name="keywords" content="admin, admin template, admin theme, responsive, responsive admin, responsive admin template, responsive theme, themeforest, 960 grid system, grid, grid theme, liquid, jquery, administration, administration template, administration theme, mobile, touch , responsive layout, boostrap, twitter boostrap"
        />
        <meta name="application-name" content="sprFlat admin template" />
        <!-- Import google fonts - Heading first/ text second -->
        <link rel='stylesheet' type='text/css' 
        <!--[if lt IE 9]>

<![endif]-->
        <!-- Css files -->
        <!-- Icons -->
        <link href="<%=basePath%>assets/main/css/icons.css" rel="stylesheet" />
        <!-- jQueryUI -->
        <link href="<%=basePath%>assets/main/css/sprflat-theme/jquery.ui.all.css" rel="stylesheet" />
        <!-- Bootstrap stylesheets (included template modifications) -->
        <link href="<%=basePath%>assets/main/css/bootstrap.css" rel="stylesheet" />
        <!-- Plugins stylesheets (all plugin custom css) -->
        <link href="<%=basePath%>assets/main/css/plugins.css" rel="stylesheet" />
        <!-- Main stylesheets (template main css file) -->
        <link href="<%=basePath%>assets/main/css/main.css" rel="stylesheet" />
        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="<%=basePath%>assets/main/css/custom.css" rel="stylesheet" />
        <!-- Fav and touch icons -->
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<%=basePath%>assets/main/img/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>assets/main/img/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<%=basePath%>assets/main/img/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="<%=basePath%>assets/main/img/ico/apple-touch-icon-57-precomposed.png">
        <link rel="icon" href="<%=basePath%>assets/main/img/ico/favicon.ico" type="image/png">
        <!-- Windows8 touch icon ( http://www.buildmypinnedsite.com/ )-->
        <meta name="msapplication-TileColor" content="#3399cc" />
    </head>
    <body>
        <!-- Start #header -->
        <div id="header">
            <div class="container-fluid">
                <div class="navbar">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">
                            <i class="im-windows8 text-logo-element animated bounceIn"></i><span class="text-logo">来答题吧</span>
                        </a>
                    </div>
                </div>
                <!-- Start #header-area -->
                <!-- End #header-area -->
            </div>
            <!-- Start .header-inner -->
        </div>
        <!-- End #header -->
        <!-- Start #sidebar -->
        <div id="sidebar">
            <!-- Start .sidebar-inner -->
            <div class="sidebar-inner">
                <!-- Start #sideNav -->
                <ul id="sideNav" class="nav nav-pills nav-stacked">
                    <li><a href="index.html">首页 <i class="im-screen"></i></a>
                    </li>
                    <li>
                        <a href="#">基础数据维护 <i class="im-paragraph-justify"></i></a>
                        <ul class="nav sub">
                            <li><a href="forms.html"><i class="ec-pencil2"></i>题型管理</a>
                            </li>
                            <li><a href="form-validation.html"><i class="im-checkbox-checked"></i>分值管理</a>
                            </li>
                            <li><a href="tables.html"><i class="en-arrow-right7"></i>难度等级管理</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">问题管理<i class="im-table2"></i></a>
                        <ul class="nav sub">
                            <li><a href="data-tables.html"><i class="en-arrow-right7"></i>问题录入</a>
                            </li>
                            <li><a href="notifications.html"><i class="fa-bell"></i>问题列表</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">题库管理<i class="st-lab"></i></a>
                        <ul class="nav sub">
                            <li><a href="panels.html"><i class="br-window"></i>题库列表</a>
                            </li>
                            <li><a href="tiles.html"><i class="im-windows8"></i>题库生成</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="ec-mail"></i>统计管理</a>
                        <ul class="nav sub">
                            <li><a href="email-inbox.html"><i class="ec-archive"></i>用户</a>
                            </li>
                            <li><a href="email-read.html"><i class="br-eye"></i>难易</a>
                            </li>
                            <li><a href="email-write.html"><i class="ec-pencil2"></i>得分</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="file.html"><i class="en-upload"></i>天气</a>
                    </li>
                    <li><a href="#"><i class="ec-location"></i>日程管理</a>
                        <ul class="nav sub">
                            <li><a href="maps-google.html"><i class="im-map2"></i>待办</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="gallery.html"><i class="im-images"></i>消息管理</a>
                    </li>
                    <li><a href="widgets.html"><i class="st-diamond"></i>日志管理</a>
                    	<ul class="nav sub">
                            <li><a href="buttons.html"><i class="im-play2"></i>请求日志</a>
                            </li>
                            <li><a href="calendar.html"><i class="im-calendar2"></i>操作日志</a>
                            </li>
                            <li><a href="grid.html"><i class="st-grid"></i>错误日志</a>
                            </li>
                            <li><a href="typo.html"><i class="im-font"></i>慢SQL日志</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- End #sideNav -->
                <!-- Start .sidebar-panel -->
                <div class="sidebar-panel">
                    <h4 class="sidebar-panel-title"><i class="im-fire"></i>系统信息</h4>
                    <div class="sidebar-panel-content">
                        <ul class="server-stats">
                            <li>
                                <span class="txt">磁盘使用率</span>
                                <span class="percent">78</span>
                                <div class="pie-chart" data-percent="78"></div>
                            </li>
                        </ul>
                        <ul class="server-stats">
                            <li>
                                <span class="txt">CPU使用率</span>
                                <span class="percent">56</span>
                                <div class="pie-chart" data-percent="56"></div>
                            </li>
                        </ul>
                        <ul class="server-stats">
                            <li>
                                <span class="txt">内存使用率</span>
                                <span class="percent">14</span>
                                <div class="pie-chart" data-percent="14"></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- End .sidebar-panel -->
            </div>
            <!-- End .sidebar-inner -->
        </div>
        <!-- End #sidebar -->
        <!-- Start #right-sidebar -->
        <div id="right-sidebar" class="hide-sidebar">
            <!-- Start .sidebar-inner -->
            <div class="sidebar-inner">
                <div class="sidebar-panel mt0">
                    <div class="sidebar-panel-content fullwidth pt0">
                        <div class="chat-user-list">
                            <form class="form-horizontal chat-search" role="form">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search for user...">
                                    <button type="submit"><i class="ec-search s16"></i>
                                    </button>
                                </div>
                                <!-- End .form-group  -->
                            </form>
                            <ul class="chat-ui bsAccordion">
                                <li>
                                    <a href="#">Favorites <span class="notification teal">4</span><i class="en-arrow-down5"></i></a>
                                    <ul class="in">
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/49.jpg" alt="@chadengle">Chad Engle
                                                <span class="has-message"><i class="im-pencil"></i></span>
                                            </a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/54.jpg" alt="@alagoon">Anthony Lagoon</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/52.jpg" alt="@koridhandy">Kory Handy</a>
                                            <span class="status"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/50.jpg" alt="@divya">Divia Manyan</a>
                                            <span class="status"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Online <span class="notification green">3</span><i class="en-arrow-down5"></i></a>
                                    <ul class="in">
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/51.jpg" alt="@kolage">Eric Hofman</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/55.jpg" alt="@mikebeecham">Mike Beecham</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/53.jpg" alt="@derekebradley">Darek Bradly</a>
                                            <span class="status online"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">Offline <span class="notification red">5</span><i class="en-arrow-down5"></i></a>
                                    <ul>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/56.jpg" alt="@laurengray">Lauren Grey</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/49.jpg" alt="@chadengle">Chad Engle</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/58.jpg" alt="@frankiefreesbie">Frankie Freesibie</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/57.jpg" alt="@joannefournier">Joane Fornier</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                        <li>
                                            <a href="#" class="chat-name">
                                                <img class="chat-avatar" src="<%=basePath%>assets/main/img/avatars/59.jpg" alt="@aiiaiiaii">Alia Alien</a>
                                            <span class="status offline"><i class="en-dot"></i></span>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="chat-box">
                            <h5>Chad Engle</h5>
                            <a id="close-user-chat" href="#" class="btn btn-xs btn-primary"><i class="en-arrow-left4"></i></a>
                            <ul class="chat-ui chat-messages">
                                <li class="chat-user">
                                    <p class="avatar">
                                        <img src="<%=basePath%>assets/main/img/avatars/49.jpg" alt="@chadengle">
                                    </p>
                                    <p class="chat-name">Chad Engle <span class="chat-time">15 seconds ago</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Hello Sugge check out the last order.</p>
                                </li>
                                <li class="chat-me">
                                    <p class="avatar">
                                        <img src="<%=basePath%>assets/main/img/avatars/48.jpg" alt="SuggeElson">
                                    </p>
                                    <p class="chat-name">SuggeElson <span class="chat-time">10 seconds ago</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Ok i will check it out.</p>
                                </li>
                                <li class="chat-user">
                                    <p class="avatar">
                                        <img src="<%=basePath%>assets/main/img/avatars/49.jpg" alt="@chadengle">
                                    </p>
                                    <p class="chat-name">Chad Engle <span class="chat-time">now</span>
                                    </p>
                                    <span class="status online"><i class="en-dot"></i></span>
                                    <p class="chat-txt">Thank you, have a nice day</p>
                                </li>
                            </ul>
                            <div class="chat-write">
                                <form action="#" class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <textarea name="sendmsg" id="sendMsg" class="form-control elastic" rows="1"></textarea>
                                        <a role="button" class="btn" id="attach_photo_btn">
                                            <i class="fa-picture s20"></i> 
                                        </a>
                                        <input type="file" name="attach_photo" id="attach_photo">
                                    </div>
                                    <!-- End .form-group  -->
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End .sidebar-inner -->
        </div>
        <!-- End #right-sidebar -->
        <!-- Start #content -->
        <div id="content">
            <!-- Start .content-wrapper -->
        </div>
        <!-- End #content -->
        <!-- Javascripts -->
        <!-- Load pace first -->
        <script src="<%=basePath%>assets/main/plugins/core/pace/pace.min.js"></script>
        <!-- Important javascript libs(put in all pages) -->
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script>
        window.jQuery || document.write('<script src="<%=basePath%>assets/main/js/libs/jquery-2.1.1.min.js">\x3C/script>')
        </script>
        <script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
        window.jQuery || document.write('<script src="<%=basePath%>assets/main/js/libs/jquery-ui-1.10.4.min.js">\x3C/script>')
        </script>
        <!--[if lt IE 9]>
  <script type="text/javascript" src="<%=basePath%>assets/main/js/libs/excanvas.min.js"></script>
  <script type="text/javascript" src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <script type="text/javascript" src="<%=basePath%>assets/main/js/libs/respond.min.js"></script>
<![endif]-->
        <!-- Bootstrap plugins -->
        <script src="<%=basePath%>assets/main/js/bootstrap/bootstrap.js"></script>
        <!-- Core plugins ( not remove ever) -->
        <!-- Handle responsive view functions -->
        <script src="<%=basePath%>assets/main/js/jRespond.min.js"></script>
        <!-- Custom scroll for sidebars,tables and etc. -->
        <script src="<%=basePath%>assets/main/plugins/core/slimscroll/jquery.slimscroll.min.js"></script>
        <script src="<%=basePath%>assets/main/plugins/core/slimscroll/jquery.slimscroll.horizontal.min.js"></script>
        <!-- Resize text area in most pages -->
        <script src="<%=basePath%>assets/main/plugins/forms/autosize/jquery.autosize.js"></script>
        <!-- Proivde quick search for many widgets -->
        <script src="<%=basePath%>assets/main/plugins/core/quicksearch/jquery.quicksearch.js"></script>
        <!-- Bootbox confirm dialog for reset postion on panels -->
        <script src="<%=basePath%>assets/main/plugins/ui/bootbox/bootbox.js"></script>
        <!-- Other plugins ( load only nessesary plugins for every page) -->
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.pie.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.resize.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.time.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.growraf.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.categories.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.stack.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/jquery.flot.tooltip.min.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/flot/date.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/sparklines/jquery.sparkline.js"></script>
        <script src="<%=basePath%>assets/main/plugins/charts/pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="<%=basePath%>assets/main/plugins/forms/icheck/jquery.icheck.js"></script>
        <script src="<%=basePath%>assets/main/plugins/forms/tags/jquery.tagsinput.min.js"></script>
        <script src="<%=basePath%>assets/main/plugins/forms/tinymce/tinymce.min.js"></script>
        <script src="<%=basePath%>assets/main/plugins/misc/highlight/highlight.pack.js"></script>
        <script src="<%=basePath%>assets/main/plugins/misc/countTo/jquery.countTo.js"></script>
        <script src="<%=basePath%>assets/main/plugins/ui/weather/skyicons.js"></script>
        <script src="<%=basePath%>assets/main/plugins/ui/notify/jquery.gritter.js"></script>
        <script src="<%=basePath%>assets/main/plugins/ui/calendar/fullcalendar.js"></script>
        <script src="<%=basePath%>assets/main/js/jquery.sprFlat.js"></script>
        <script src="<%=basePath%>assets/main/js/app.js"></script>
        <script src="<%=basePath%>assets/main/js/pages/dashboard.js"></script>
    </body>
</html>
