<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once 'confi.php';
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    // Get data
    // print_r($_POST);

    $email = $_POST['email'];
    $username=$_POST['username'];
    $name=$_POST['name'];
    $password = $_POST['password'];
    $birthday = $_POST['birthday'];
    $gender = $_POST['gender'];
    $here_for = $_POST['here_for'];
    $lookingfor = $_POST['lookingfor'];
    $location = $_POST['location'];
    $interests = $_POST['interests'];
    $aboutme = $_POST['aboutme'];
    $relationship = $_POST['relationship'];
    $sexuality = $_POST['sexuality'];
    $height = $_POST['height'];
    $weight = $_POST['weight'];
    $body_type = $_POST['body_type'];
    $eyecolor = $_POST['eyecolor'];
    $hair_color = $_POST['hair_color'];
    $living = $_POST['living'];
    $children = $_POST['children'];
    $smoking = $_POST['smoking'];
    $drinking = $_POST['drinking'];
    $education = $_POST['education'];
    $language = $_POST['language'];
    $job = $_POST['job'];
    $company = $_POST['company'];
    $income = $_POST['income'];



    // print_r($_POST);
    $sql = "INSERT INTO `dateme`.`user`(`userid`,`username`,`name`,`password` ,`email`, `birthday`, `gender`, `here_for`, `lookingfor`, `location`,"
            . " `interests`, `aboutme`, `relationship`, `sexuality`, `height`, `weight`, `body_type`, `eyecolor`, `hair_color`,"
            . " `living`, `children`, `smoking`, `drinking`, `education`, `language`, `job`, `company`, `income`)"
            . " VALUES (NULL,'$username','$name','$password','$email','$birthday','$gender','$here_for','$lookingfor','$location','$interests','$aboutme',"
            . "'$relationship','$sexuality','$height','$weight','$body_type','$eyecolor','$hair_color','$living',"
            . "'$children','$smoking','$drinking','$education','$language','$job','$company','$income');";


    //echo $sql;
    // Insert data into data base
//	$sql = "INSERT INTO `dateme`.`users` (`ID`, `name`, `email`, `password`, `status`) VALUES (NULL, '$name', '$email', '$password', '$status');";
//	$sql = "INSERT INTO `dateme`.`user` (`userid`, `email`) VALUES (NULL, '$email');";
    $qur = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    if ($qur) {
        $userdata="SELECT userid FROM `user` WHERE `email` = '$email'";
        //$qur = mysqli_query($conn,$userdata) or die(mysqli_error($conn));
        
        $result = mysqli_query($conn,$userdata);
    //    $result =array();
             while($row = $result->fetch_assoc()){
        	//while($row = mysql_fetch_array($qur)){
			extract($row);
//			$result1 = array( "userid" => $row["userid"]); 
                        $userID=$row["userid"];
		}
//        $json = array("status" => 1, "info" => $result1);
        $json = array("ResponseCode" => "000", "ResponseDescription" => "Account created successfully!","userid" => $userID);
    } else {
        $json = array("ResponseCode" =>"001", "ResponseDescription" => "Errot adding user!");
    }
} else {
    $json = array("ResponseCode" => 400, "ResponseDescription" => "Request method not accepted,use POST method");
}
echo json_encode($json);
@mysql_close($conn);

/* Output header */
?>