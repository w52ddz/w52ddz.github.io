<div class="all">
	<div class="allContent">
		<div class="content-header">创建用户</div>
		<div class="mainContent">
			<div class="content-subHeader">创建用户</div>
			<div class="content-details" >
				<form name="userFrom" ng-submit="createUser()" class="form-horizontal">
					<div  style="height:55px; " class="form-group firstGroup">
						<label for="" class="control-label col-lg-2">用户名：</label>
						<div class="col-lg-5">
							<input 
								type="text" 
								class="form-control"
								placeholder="请输入用户名"
								name="username"
								ng-model="user.username"
								ng-required="true"
								ng-pattern="/^[a-zA-Z]\w{3,7}$/"
							>
						</div>
						<div class="col-lg-5 text-danger"><span ng-show="userFrom.username.$dirty && userFrom.username.$invalid">字母开头，4-8位</span></div>
					</div>
					<div style="height:55px; " class="form-group">
						<label for="" class="control-label col-lg-2">密 码：</label>
						<div class="col-lg-5">
							<input 
								type="text" 
								class="form-control"
								placeholder="请输入密码"
								name="password" 
								ng-model="user.password"
								ng-required="true"
								ng-pattern="/[a-zA-Z]+.*\d+|\d+.*[a-zA-Z]+/"
							>
						</div>
						<div class="col-lg-5 text-danger"><span ng-show="userFrom.password.$dirty && userFrom.password.$invalid">包含字母和数字</span></div>
					</div>
					<div style="height:55px; " class="form-group">
						<label for="" class="control-label col-lg-2">电 话：</label>
						<div class="col-lg-5">
							<input 
								type="text" 
								class="form-control"
								placeholder="请输入电话号码" 
								name="telephone" 
								ng-model="user.telephone"
								ng-pattern="/^\d{3}-\d{8}$|^\d{4}-\d{7}$/"
							>
						</div>
						<div class="col-lg-5 text-danger"><span ng-show="userFrom.telephone.$invalid">座机号码，例如：010-12345678  0418-1234567</span></div>
					</div>
					<div style="height:55px; " class="form-group">
						<label for="" class="control-label col-lg-2">性 别：</label>
						<div class="col-lg-5 form-radio">
							<label>男：<input type="radio" ng-model="user.sex" value="man"></label>&emsp;
							<label>女：<input type="radio" ng-model="user.sex" value="woman"></label>
						</div>
						<div class="col-lg-5"><span></span></div>
					</div>
					<div style="height:55px; " class="form-group">
						<label for="" class="control-label col-lg-2">简 介：</label>
						<div class="col-lg-5">
							<textarea placeholder="请输入简介" name="info" ng-model="user.info" ng-pattern="/^.{0,100}$/"></textarea>
						</div>
						<div class="col-lg-5 text-danger"><span ng-show="userFrom.info.$invalid">不能超过100</span></div>
					</div>
					<div style="height:55px; " class="form-group btn-container">
						<div class="col-lg-5 col-lg-offset-2">
							<button ng-disabled="userFrom.$invalid" class="btn btn-success">提交</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>