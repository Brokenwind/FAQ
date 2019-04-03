<%@ page contentType="text/html; charset=utf-8"%>

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main"
	id="location_useragent">
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="#"><span class="glyphicon glyphicon-home"></span>
			</a></li>
			<li class="active">地理位置综合分析</li>
		</ol>
	</div>
	<!--/.row-->

	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">地理位置综合分析</h1>
		</div>
	</div>
	<!--/.row-->

	<!-- 不同的地理位置浏览器使用情况 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="alert bg-success" role="alert">
						<span class="glyphicon glyphicon-check"></span> 不同的地理位置浏览器使用情况
					</div>
				</div>
				<div class="panel-body">
					<table id="history_location_browser" data-show-refresh="true"
						data-show-toggle="true" data-show-columns="true"
						data-search="true" data-pagination="true" data-sort-name="count"
						data-sort-order="desc">
						<thead>
							<tr>
								<!-- data-checkbox 表示在此字段前可以有选择框 -->
								<th data-field="area" data-sortable="true">访问地区名</th>
								<th data-field="browser" data-sortable="true">浏览器</th>
								<th data-field="count" data-sortable="true">使用量</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- 不同的地理位置操作系统使用情况 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="alert bg-success" role="alert">
						<span class="glyphicon glyphicon-check"></span> 不同的地理位置操作系统使用情况
					</div>
				</div>
				<div class="panel-body">
					<table id="history_location_os" data-show-refresh="true"
						data-show-toggle="true" data-show-columns="true"
						data-search="true" data-pagination="true" data-sort-name="count"
						data-sort-order="desc">
						<thead>
							<tr>
								<th data-field="area" data-sortable="true">访问地区名</th>
								<th data-field="os" data-sortable="true">操作系统</th>
								<th data-field="count" data-sortable="true">使用量</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- 不同的地理位置的平台使用情况 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="alert bg-success" role="alert">
						<span class="glyphicon glyphicon-check"></span> 不同的地理位置的平台使用情况
					</div>
				</div>
				<div class="panel-body">
					<table id="history_location_platform" data-show-refresh="true"
						data-show-toggle="true" data-show-columns="true"
						data-search="true" data-pagination="true" data-sort-name="count"
						data-sort-order="desc">
						<thead>
							<tr>
								<th data-field="area" data-sortable="true">访问地区名</th>
								<th data-field="platform" data-sortable="true">硬件平台</th>
								<th data-field="count" data-sortable="true">使用量</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--/.row-->
</div>
<!--/.main-->