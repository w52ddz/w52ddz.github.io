<div class="all">
	<div class="allContent">
		<div class="content-header">用户列表</div>
		<div class="mainContent">
			<div class="content-subHeader">用户列表</div>
			<div class="content-details" >
				<div class="container-fluid">
					<div style="height:30px;margin-bottom:20px;font-weight:bold;" class="row tilte">
						<div class="col-lg-2">用户ID</div>
						<div class="col-lg-2">用户名</div>
						<div class="col-lg-2">性别</div>
						<div class="col-lg-2">密码</div>
						<div class="col-lg-2">电话</div>
						<div class="col-lg-2">简介</div>
					</div>
					<div style="height:30px;" class="row" ng-repeat="item in list">
						<div style="height:50px;" class="col-lg-2"><a ng-href="#/userdetail/{{item.id}}">{{item.id}}</a></div>
						<div style="height:50px;" class="col-lg-2">{{item.username}}</div>
						<div style="height:50px;" class="col-lg-2">{{item.sex}}</div>
						<div style="height:50px;" class="col-lg-2">{{item.password}}</div>
						<div style="height:50px;" class="col-lg-2">{{item.telephone}}</div>
						<div style="height:50px;" class="col-lg-2">{{item.info}}</div>
					</div>
				</div>
				<ul class="pagination pull-right clearfix">
					<li><a ng-href="#/userlist/{{pageNum - 1 < 1 ? 1 : pageNum - 1}}">上一页</a></li>
					<li><a ng-href="#/userlist/{{+pageNum + 1}}">下一页</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>