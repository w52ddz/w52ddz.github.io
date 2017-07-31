angular.module("myApp",["ui.router"])
.config(function ($stateProvider,$urlRouterProvider){
	$stateProvider
	.state("home",{
		url:"/",
		templateUrl:"view/home.tpl",
		controller:"homeCtrl"
	})
	.state("login",{
		url:"/login",
		templateUrl:"view/login.tpl",
		controller:"loginCtrl"
	})
	.state("createUser",{
		url:"/createuser",
		templateUrl:"view/user/create.tpl",
		controller:"createUserCtrl"
	})
	.state("userDetail",{
		url:"/userdetail/:userId",
		templateUrl:"view/user/detail.tpl",
		controller:"userDetailCtrl"
	})
	.state('userList', {
		url: '/userlist/{pageNum:int}',
		templateUrl: 'view/user/list.tpl',
		controller: 'userListCtrl'
	})
	.state('createNews', {
		url: '/createnews',
		templateUrl: 'view/news/create.tpl',
		controller: 'createNewsCtrl'
	})
	.state('newsList', {
		url: '/newslist/:pageNum',
		templateUrl: 'view/news/list.tpl',
		controller: 'newsListCtrl'
	})
	.state('newsDetail', {
		url: '/newsdetail/:newsID',
		templateUrl: 'view/news/detail.tpl',
		controller: 'newsDetailCtrl'
	})
	$urlRouterProvider.otherwise("/")
})
.controller('userListCtrl', function ($scope, $http, $stateParams) {
	$scope.pageNum = $stateParams.pageNum;
	$http.get('action/userlist.php', {
		params: {
			pagenum: $stateParams.pageNum
		}
	}).success(function (res) {
		if (res && res.errno === 0) {
			$scope.list = res.data;
		}
	})

})
.controller("userDetailCtrl",function ($scope, $http, $stateParams){
	$http.get('action/userdetail.json?id=' + $stateParams.userId)
	.success(function (res){
		if(res && res.errno==0){
			$scope.data = res.data;
		}
	})
	console.log($scope.data)
	
})
.controller("createUserCtrl",function ($scope, $http, $location){
	$scope.user = {sex:"man"};
	$scope.createUser = function (){
		$http.post("action/createuser.php", $scope.user)
		.success(function (res){
			if(res && res.errno == 0){
				$location.path("/userlist/1")
			}
		})
	}
})
.controller('newsDetailCtrl', function ($scope, $stateParams, $http) {
	$http
		.get('action/newsdetail.php?id' + $stateParams.newsID)
		.success(function (res) {
			if (res && res.errno === 0) {
				$scope.data = res.data;
			}
		})
})
// 新闻列表
.controller('newsListCtrl', function ($scope, $stateParams, $http) {
	$scope.pageNum = $stateParams.pageNum;
	$http
		.get('action/newslist.php?pagenum' + $stateParams.pageNum)
		.success(function (res) {
			if (res && res.errno === 0) {
				$scope.list = res.data;
			}
		})
})
// 创建新闻控制器
.controller('createNewsCtrl', function ($scope, $http, $location) {
	$scope.createNews = function () {
		$scope.news.date = new Date().getTime();
		$http
			.post('action/createnews.php', $scope.news)
			.success(function (res) {
				if (res && res.errno === 0) {
					$location.path('/newslist/1')
				}
			})
	}
})
//路由控制器
.controller("homeCtrl",function($scope,$interval){
	$scope.date = new Date();
	$interval(function (){
		$scope.date = new Date();
	},1000)
})
.controller("loginCtrl" ,function($scope,$http,$rootScope,$location){
	console.log(111)
	$scope.gotoLogin = function (){
		console.log(222)
		$http.post("action/login.php",$scope.data)
		.success(function (res){
			if(res && res.errno==0){
				console.log(res);
				//用户名，密码存在根作用域
				$rootScope.userName = res.data.username;
				$location.path("/");
			}
		})
	}
})
//页面控制器
.controller("navCtrl",function ($scope){
	$scope.list=[
		{
			title:"基础操作",
			childList:[
				{
					title:"创建用户",
					url:"#/createuser"
				},
				{
					title:"用户列表",
					url:"#/userlist/1"
				},
				
				{
					title:"退出系统",
					url:"action/logout.php"
				}
			]
		},
		{
			title:"新闻操作",
			childList:[
				{
					title:"添加新闻",
					url:"#/createnews"
				},
				{
					title:"新闻列表",
					url:"#/newslist/1"
				}

			]
		},
		{
			title:"版本信息",
			childList:[
				{
					title:"v1.0",
					url:"javascript:"
				}
			]
		}
	]
})
.run(function ($rootScope,$http,$location){
	//检测登录，如果已经登录直接跳转到首页，否则需要先登录
	$http({
		url:"action/checkLogin.php"
	})
	.success(function (res){
		if(res && res.errno==0 && res.data && res.data.username){
			$rootScope.userName = res.data.username;
			//跳到首页
			$location.path("/");
		}else{
			$location.path("/login");
		}
	})
	// 为了让用户登录前不能进入其他页面，需要监听路由成功触发的事件

	$rootScope.$on("stateChangeSuccess", function (){
		if($rootScope.userName == undefined){
			$location.path("/login");
		}
	})
})