<%@ page contentType="text/html; charset=utf-8"%>
<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
	<ul class="nav menu">
		<!--占位-->
		<li role="presentation" class="divider"></li>
		<li id="current_li"><a href="../views/current.jsp"><span
				class="glyphicon glyphicon-dashboard"></span> 今日情况</a>
		</li>
		<!--占位-->
		<li role="presentation" class="divider"></li>
		<li id="history_li"><a href="../views/history.jsp"><span
				class="glyphicon glyphicon-stats"></span> 历史日志</a>
		</li>
		<!--占位-->
		<li role="presentation" class="divider"></li>
		<!-- 下拉 -->
		<li class="parent " id="customeried_select_li"><a
			href="integrated.html"> <span
				class="glyphicon glyphicon-list"></span> 整合分析 <span
				data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em
					class="glyphicon glyphicon-s glyphicon-plus"></em> </span> </a>
			<ul class="children collapse" id="sub-item-1">
				<li id="integrated_ip_useragent_select_li"><a class="" href="#ip_useragent"> <span
						class="glyphicon glyphicon-share-alt"></span> IP地址综合分析 </a></li>
				<li id="integrated_location_useragent_select_li"><a class="" href="#location_useragent"> <span
						class="glyphicon glyphicon-share-alt"></span> 地理位置综合分析 </a></li>
				<li id="integrated_other_useragent_select_li"><a class="" href="#location_useragent"> <span
						class="glyphicon glyphicon-share-alt"></span> 其它分析 </a></li>
			</ul>
		</li>
		<!--占位-->
		<li role="presentation" class="divider"></li>
		<li id="cluster_status_li"><a
			href="../views/cluster_status.jsp"><span
				class="glyphicon glyphicon-list-alt"></span> 集群状态</a></li>
	</ul>
</div>
<!--/.sidebar-->