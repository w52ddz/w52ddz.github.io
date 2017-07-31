<div class="all">
	<div class="allContent">
		<div class="content-header">添加新闻</div>
		<div class="mainContent">
			<div class="content-subHeader">添加新闻</div>
			<div class="content-details" >
				<form style="padding-top:30px" name="newsForm" ng-submit="createNews()" class="form-horizontal">
		<div style="height: 70px;" class="form-group">
			<label for="" class="col-lg-2 control-label text-right">新闻标题</label>
			<div class="col-lg-5">
				<input 
					type="text" 
					class="form-control"
					placeholder="请输入新闻标题"
					name="title"
					ng-model="news.title" 
					ng-required="true"
				>
			</div>
			<div class="col-lg-5 text-danger"><span ng-show="newsForm.title.$dirty && newsForm.title.$invalid">新闻标题必填</span></div>
		</div>
		<div style="height: 70px;" class="form-group">
			<label for="" class="col-lg-2 control-label text-right">新闻作者</label>
			<div class="col-lg-5">
				<input 
					type="text" 
					class="form-control"
					placeholder="请输入新闻作者" 
					name="writer"
					ng-model="news.writer"
					ng-required="true"
				>
			</div>
			<div class="col-lg-5 text-danger"><span ng-show="newsForm.writer.$dirty && newsForm.writer.$invalid">新闻作者必填</span></div>
		</div>
		<div style="height: 70px;" class="form-group">
			<label for="" class="col-lg-2 control-label text-right">新闻内容</label>
			<div class="col-lg-5">
				<textarea placeholder="请输入新闻内容" name="content" ng-model="news.content" ng-required="true"></textarea>
			</div>
			<div class="col-lg-5 text-danger"><span ng-hide="newsForm.content.$pristine || newsForm.content.$valid">新闻内容必填</span></div>
		</div>
		<div style="height: 60px;" class="form-group btn-container">
			<div class="col-lg-5 col-lg-offset-2"><button class="btn btn-success" ng-disabled="newsForm.$invalid">提交</button></div>
		</div>
	</form>
			</div>
		</div>
	</div>
</div>