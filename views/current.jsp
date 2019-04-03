<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>荟萃日志分析</title>

<link href="../resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../resources/bootstrap/css/datepicker3.css"
	rel="stylesheet">
<link href="../resources/bootstrap/css/bootstrap-table.css"
	rel="stylesheet">
<link href="../resources/bootstrap/css/styles.css"
	rel="stylesheet">

<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<jsp:include page="common_navbar.jsp"></jsp:include>
	<jsp:include page="common_sidebar.jsp"></jsp:include>

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
		<div class="row">
			<!--面包屑导航-->
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span>
				</a></li>
				<li class="active">今日情况</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">今日情况</h1>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-red panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-stats glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-total-num">42k</div>
							<div class="text-muted">今日访问量</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-user glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-new-user">78</div>
							<div class="text-muted">新用户</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-blue panel-widget ">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-book glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-log-cubage">9.8M</div>
							<div class="text-muted">日志大小</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<div class="panel panel-orange panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-comment glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-else">52</div>
							<div class="text-muted">可疑访问</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading glyphicon glyphicon-refresh"
						id="current-access-line-char" onclick="jqueryAjax()">访问时间图</div>
					<div class="panel-body">
						<div class="canvas-wrapper" id="line-current-chart-wrapper">
							<canvas class="main-chart" id="line-current-chart" height="200"
								width="600"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>正常访问</h4>
						<div class="easypiechart" id="easypiechart-blue"
							data-percent="97.23">
							<span class="percent">97.2%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>跳出量</h4>
						<div class="easypiechart" id="easypiechart-orange"
							data-percent="1.41">
							<span class="percent">1.41%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>爬虫痕迹</h4>
						<div class="easypiechart" id="easypiechart-teal"
							data-percent="0.02">
							<span class="percent">0.02%</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-md-3">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>可疑访问</h4>
						<div class="easypiechart" id="easypiechart-red"
							data-percent="1.56">
							<span class="percent">1.56%</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->
		<!-- 浏览器比较 -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">各种浏览器比较</div>
					<div class="panel-body">
						<div class="canvas-wrapper" id="browser-count-bar-wrapper">
							<canvas class="main-chart" id="browser-count-bar" height="200"
								width="600"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- 操作系统比较 -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">各种操作系统比较</div>
					<div class="panel-body">
						<div class="canvas-wrapper" id="os-count-bar-wrapper">
							<canvas class="main-chart" id="os-count-bar" height="200"
								width="600"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/.row-->
		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default chat">
					<div class="panel-heading" id="accordion">
						<span class="glyphicon glyphicon-comment"></span> 重要提示信息
					</div>
					<div class="panel-body">
						<ul>
							<li class="left clearfix"><span class="chat-img pull-left">
									<img src="http://placehold.it/80/30a5ff/fff" alt="User Avatar"
									class="img-circle" /> </span>
								<div class="chat-body clearfix">
									<div class="header">
										<strong class="primary-font">爬虫</strong> <small
											class="text-muted">32 mins ago</small>
									</div>
									<p>Baiduspider+(+http://www.baidu.com/search/spider.htm)</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--/.col-->
		</div>
		<!--/.row-->
		<button type="button" class="btn btn-next" id="test_json">下一步</button>
	</div>
	<!--/.main-->

	<script src="../resources/js/jquery-1.11.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/chart/chart.min.js"></script>
	<script src="../resources/chart/current-access-line-chart.js"></script>
	<script src="../resources/chart/current-browser-bar-chart.js"></script>
	<script src="../resources/chart/current-os-bar-chart.js"></script>
	<script src="../resources/chart/easypiechart.js"></script>
	<script src="../resources/chart/easypiechart-data.js"></script>
	<script
		src="../resources/bootstrap/js/bootstrap-datepicker.js"></script>
	<script src="../resources/bootstrap/js/bootstrap-table.js"></script>

	<script>
		/**当窗口的宽度小于768的时候，就不再显示左边的导航栏*/
		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
		window.onload = function() {
			//获取当前访问量
			queryCurrentAccess();
			//获取当前用户浏览器使用情况
			queryBrowsers();
			//获取操作系统信息
			queryOss();
			$("#current_li").addClass('active');
		}
	</script>
</body>

</html>
