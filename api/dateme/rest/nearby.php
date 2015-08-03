<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

include_once 'confi.php';
if ($_SERVER['REQUEST_METHOD'] == "GET") {
    // Get data
    // print_r($_POST);

    $userid = $_GET['userid'];
    $location = $_GET['location'];
    $startindex = $_GET['startindex'];
    $endindex = $_GET['endindex'];




    $sql = "SELECT * FROM `user` WHERE `userid` !=" . $userid . " and `location`= '" . $location . "' ORDER BY `userid` ASC LIMIT " . $startindex . "," . $endindex;




    $result = mysqli_query($conn, $sql) or die(mysqli_error($conn));
    if ($result->num_rows > 0) {

        $nearby = array();
        while ($row = $result->fetch_assoc()) {
            //echo "user id: " . $row["userid"]. " - email: " . $row["email"]. "<br>";
            $nearby[] = array(
                "userid" => $row["userid"],
                "username" => $row["username"],
                "name" => $row["name"],
                "email" => $row["email"],
                "birthday" => $row["birthday"],
                "gender" => $row["gender"],
                "here_for" => $row["here_for"],
                "lookingfor" => $row["lookingfor"],
                "location" => $row["location"],
                "interests" => $row["interests"],
                "aboutme" => $row["aboutme"],
                "relationship" => $row["relationship"],
                "sexuality" => $row["sexuality"],
                "height" => $row["height"],
                "weight" => $row["weight"],
                "body_type" => $row["body_type"],
                "eyecolor" => $row["eyecolor"],
                "hair_color" => $row["hair_color"],
                "living" => $row["living"],
                "children" => $row["children"],
                "smoking" => $row["smoking"],
                "drinking" => $row["drinking"],
                "education" => $row["education"],
                "language" => $row["language"],
                "job" => $row["job"], "company" => $row["company"],
                "income" => $row["income"]);
        }

        $json = array("ResponseCode" => "000", "Response Description" => "Successful", "searchresult" => $nearby);
    } else {
        $json = array("ResponseCode" => "001", "Response Description" => "Error retriving data!");
    }
} else {
    $json = array("status" => 0, "msg" => "Request method not accepted,use GET method");
}
echo json_encode($json);
@mysql_close($conn);

/* Output header */
?>