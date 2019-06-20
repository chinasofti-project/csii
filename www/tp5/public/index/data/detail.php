<?php
	header("Content-Type:application/json");
	$conn=mysqli_connect("127.0.0.1","root","root","csii_db",3306);
	$sql="set names utf8";
    mysqli_query($conn,$sql);
    $id=$_REQUEST["id"];
    $output = [];

    $sql = "select * from basic where id = $id";
    $result = mysqli_query($conn,$sql);
    @$rows = mysqli_fetch_all($result,1)[0];
    $output["basic"] = [$rows];

    $sql = "select * from csiifb where cid = $id";
    $result = mysqli_query($conn,$sql);
    @$rows = mysqli_fetch_all($result,1)[0]; 
    $output["csiifb"] = [$rows];


    $sql = "select * from custfb where hid = $id";
    $result = mysqli_query($conn,$sql);
    @$rows = mysqli_fetch_all($result,1)[0];
    $output["custfb"] = [$rows];

    echo json_encode($output);
?>