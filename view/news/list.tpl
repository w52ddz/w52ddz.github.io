<div class="all">
	<div class="allContent">
		<div class="content-header">新闻列表</div>
		<div class="mainContent">
			<div class="content-subHeader">新闻列表</div>
			<div class="content-details" >
				<div class="container-fluid">
		<div style="height:30px;margin-bottom:20px;font-weight:bold;" class="row title">
			<div style="height:50px; width:100px" class="col-lg-1">新闻ID</div>
			<div style="height:50px; width:170px" class="col-lg-2">新闻标题</div>
			<div style="height:50px; width:170px" class="col-lg-1">新闻作者</div>
			<div style="height:50px; width:170px" class="col-lg-2">发布时间</div>
			<div style="height:50px; width:170px" class="col-lg-6">新闻内容</div>
		</div>
		<div style="height:30px;" class="row" ng-repeat="item in list">
			<div  style="height:50px; width:100px" class="col-lg-1"><a ng-href="#/newsdetail/{{item.id}}">{{item.id}}</a></div>
			<div  style="height:50px; width:170px" class="col-lg-2">{{item.title}}</div>
			<div  style="height:50px; width:170px" class="col-lg-1">{{item.writer}}</div>
			<div  style="height:50px; width:170px" class="col-lg-2">{{item.date | date : 'yyyy-MM-dd HH:mm:ss'}}</div> 
			<div  style="height:50px; width:170px" class="col-lg-6">{{item.content}}</div>
		</div>
	</div>
	<ul class="pagination pull-right">
		<li><a ng-href="#/newslist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
		<li><a ng-href="#/newslist/{{+pageNum + 1}}">下一页</a></li>
	</ul>
			</div>
		</div>
	</div>
</div>