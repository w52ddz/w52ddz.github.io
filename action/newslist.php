<?php
$data = array(
	array(
		"id" => 1,
		"title" => "新浪网新闻1",
		"writer" => "小李1",
		"date" => 1455808822088,
		"content" => "新浪网新闻内容1"
	),
	array(
		"id" => 2,
		"title" => "新浪网新闻2",
		"writer" => "小李2",
		"date" => 1455808822088,
		"content" => "新浪网新闻内容2"
	),
	array(
		"id" => 3,
		"title" => "新浪网新闻3",
		"writer" => "小李3",
		"date" => 1455808822088,
		"content" => "新浪网新闻内容3"
	),
	array(
		"id" => 4,
		"title" => "新浪网新闻4",
		"writer" => "小李4",
		"date" => 1455808822088,
		"content" => "新浪网新闻内容4"
	),
	array(
		"id" => 5,
		"title" => "新浪网新闻5",
		"writer" => "小李5",
		"date" => 1455808822088,
		"content" => "新浪网新闻内容5"
	)
);
$result = array(
	"errno" => 0,
	"data" => $data
);
echo json_encode($result);