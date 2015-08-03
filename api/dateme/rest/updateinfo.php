<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once 'confi.php';
if ($_SERVER['REQUEST_METHOD'] == "GET") {

    $userID = $_GET['userid'];

    $userdata = "SELECT * FROM `user` WHERE `userid` = '$userID'";
    $result = mysqli_query($conn, $userdata);
     
    while ($row = $result->fetch_assoc()) {
        extract($row);
        $info = array("userid" => $row["userid"],
            "username" => $row["username"],
            "name" => $row["name"],
            "email" => $row["email"],
            "birthday" => $row["birthday"],
            "gender" => $row["gender"],
            "here_for" => $row["here_for"],
            "lookingfor" => $row["lookingfor"],
            "location" => $row["location"],"interests" => $row["interests"],
            "aboutme" => $row["aboutme"],
            "aboutme" => $row["aboutme"],
            "sexuality" => $row["sexuality"],"height" => $row["height"],"weight" => $row["weight"],
            "body_type" => $row["body_type"],"eyecolor" => $row["eyecolor"],"hair_color" => $row["hair_color"],
            "living" => $row["living"],"children" => $row["children"],"smoking" => $row["smoking"],
            "drinking" => $row["drinking"],"education" => $row["education"],"language" => $row["language"],
            "job" => $row["job"],"company" => $row["company"],"birthday" => $row["income"]);




        //     $info[]=array("email"=>$row["email"]);
    }
    $json = array("ResponseCode" => "000", "Response Description" => "Successful", "useinfo" => $info);
}

echo json_encode($json);
@mysql_close($conn);

/* Output header */
?>