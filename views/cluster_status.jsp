<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>荟萃日志分析--集群状态</title>

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
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span>
				</a></li>
				<li class="active">集群状态</li>
			</ol>
		</div>
		<!--/.row-->

		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">集群状态</h1>
			</div>
		</div>
		<!--/.row-->
		<div class="row">
			<div class="col-xs-12 col-md-6 col-lg-3">
			<a href="http://master:50070/dfshealth.jsp">
				<div class="panel panel-red panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-cloud glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-total-num">HDFS</div>
							<div class="text-muted"></div>
						</div>
					</div>
				</div>
				</a>
			</div>
			<div class="col-xs-12 col-md-6 col-lg-3">
				<a href="http://master:50030/jobtracker.jsp">
				<div class="panel panel-teal panel-widget">
					<div class="row no-padding">
						<div class="col-sm-3 col-lg-5 widget-left">
							<em class="glyphicon glyphicon-folder-open glyphicon-l"></em>
						</div>
						<div class="col-sm-9 col-lg-7 widget-right">
							<div class="large" id="current-access-new-user">MapRed</div>
							<div class="text-muted"></div>
						</div>
					</div>
				</div>
				</a>
			</div>

		</div>
		<!--/.row-->
	</div>
	<!--/.main-->


	<script src="../resources/js/jquery-1.11.1.min.js"></script>
	<script src="../resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="../resources/chart/chart.min.js"></script>
	<script src="../resources/chart/chart-data.js"></script>
	<script src="../resources/chart/easypiechart.js"></script>
	<script src="../resources/chart/easypiechart-data.js"></script>
	<script
		src="../resources/bootstrap/js/bootstrap-datepicker.js"></script>
	<script src="../resources/bootstrap/js/bootstrap-table.js"></script>

	<script>
		!function($) {
			$(document)
					.on(
							"click",
							"ul.nav li.parent > a > span.icon",
							function() {
								$(this).find('em:first').toggleClass(
										"glyphicon-minus");
							});
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function() {
			if ($(window).width() > 768)
				$('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function() {
			if ($(window).width() <= 767)
				$('#sidebar-collapse').collapse('hide')
		})
		$("#cluster_status_li").addClass('active');
	</script>

	<script>
		function getclassname(obj) {
			if (document.getElementsByClassName('link_onclick').length == 0) {
				obj.className = 'link_onclick';
				obj.id = 'link_onclick';
			} else {
				var obj1 = document.getElementById('link_onclick');
				obj1.className = '111';
				obj1.id = '1';
				obj.className = 'link_onclick';
				obj.id = 'link_onclick';
			}
		}
	</script>
</body>

</html>