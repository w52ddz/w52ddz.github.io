<?php
$data = array(
	"id" => 1,
	"title" => "新浪网新闻",
	"writer" => "小名",
	"date" => 1455808822088,
	"content" => "新浪网新闻内容"
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);