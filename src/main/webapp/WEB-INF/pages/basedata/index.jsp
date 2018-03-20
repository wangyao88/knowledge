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
        <!-- Start #content -->
        <br>
        <div class="outlet">
                    <!-- Start .outlet -->
                    <!-- Page start here ( usual with .row ) -->
                    <div class="row">
                        <div class="col-lg-5 col-md-5">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">玩家等级</h4>
                                </div>
                                <div class="panel-body">
                                    <!-- N*N*100 -->
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="per20">等级</th>
                                                <th class="per20">下限</th>
                                                <th class="per20">上限</th>
                                                <th class="per40">状态</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>一级</td>
                                                <td>0</td>
                                                <td>100</td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-success animated-bar" role="progressbar" aria-valuenow="10" style="width: 10%;">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>二级</td>
                                                <td>101</td>
                                                <td>400</td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-danger animated-bar" role="progressbar" aria-valuenow="20" style="width: 20%;">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>三级</td>
                                                <td>401</td>
                                                <td>900</td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-warning animated-bar" role="progressbar" aria-valuenow="30" style="width: 30%;">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>四级</td>
                                                <td>901</td>
                                                <td>1600</td>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-info animated-bar" role="progressbar" aria-valuenow="40" style="width: 40%;">
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <div class="col-lg-7 col-md-7">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">玩家等级介绍</h4>
                                </div>
                                <div class="panel-body">
                                    sdfsdf
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <div class="row">
                        <!-- Start .row -->
                        <div class="col-lg-4 col-md-4">
                            <!-- col-lg-4 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">题型列表</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th class="per40">序号</th>
                                                <th class="per40">题型</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>单选题</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>多选题</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>填空题</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>简答题</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-4 end here -->
                        <div class="col-lg-4 col-md-4">
                            <!-- col-lg-6 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">分值列表</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th class="per40">序号</th>
                                                <th class="per15">分值(分)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>5</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>8</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>10</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>15</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-4 end here -->
                        <div class="col-lg-4 col-md-4">
                            <!-- col-lg-4 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">难度等级列表</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th class="per40">序号</th>
                                                <th class="per40">等级</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>简单</td>
                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>一般</td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>困难</td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>究极</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                    </div>
                    <!-- End .row -->
                    <div class="row">
                        <!-- Start .row -->
                        <div class="col-lg-12">
                            <!-- col-lg-12 start here -->
                            <div class="panel panel-default plain toggle panelClose panelRefresh">
                                <!-- Start .panel -->
                                <div class="panel-heading white-bg">
                                    <h4 class="panel-title">Table bordered</h4>
                                </div>
                                <div class="panel-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th class="per5">
                                                    #
                                                </th>
                                                <th class="per40">Employe</th>
                                                <th class="per40">Position</th>
                                                <th class="per15">Salary</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    1
                                                </td>
                                                <td>Jacob Olsen</td>
                                                <td>Developer</td>
                                                <td>2530$</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    2
                                                </td>
                                                <td>Lara James</td>
                                                <td>SEO</td>
                                                <td>3700$</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    3
                                                </td>
                                                <td>Steve Sidwell</td>
                                                <td>Photographer</td>
                                                <td>1340$</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    4
                                                </td>
                                                <td>Elena Dobrev</td>
                                                <td>Project manger</td>
                                                <td>5600$</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- End .panel -->
                        </div>
                        <!-- col-lg-12 end here -->
                    </div>
                    <!-- End .row -->
                    <!-- Page End here -->
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
        <script type="text/javascript">
	        var basePath = "<%=basePath%>";
	    </script>
    </body>
</html>
