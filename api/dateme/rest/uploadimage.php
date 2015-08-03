<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$fname = $_POST["filename"];
$dirname = $_POST["userid"];
$base = $_REQUEST['image'];
$binary = base64_decode($base,TRUE);
header('Content-Type: bitmap; charset=utf-8');
//    mkdir("testing");

$path = __DIR__ . "/images/" . $dirname . "/";

if (!file_exists($path)) {
    mkdir($path, 0777);

    $file = fopen($path . "/" . $fname . ".jpg", "wb");
    fwrite($file, $binary);
    fclose($file);

 
    
    exit;
} else {
    $file = fopen($path . "/" . $fname . ".jpg", "wb");
    fwrite($file, $binary);
    fclose($file);
}
 $json= Array("ResponseCode"=>"000","ResponseDescription"=>"Successful","message"=>"Image upload completed!");
 echo json_encode($json);
 


//mkdir("$path", 0777);
//$percorso = $path;
//$file = fopen($percorso . "/uploaded_image.jpg", "wb");
//fwrite($file, $binary);
//fclose($file);
//echo 'Image upload complete!!, Please check your php file directory……';
//$filenameIn  = $_POST['text'];
//$filenameIndecode=  base64_decode($filenameIn);
//$filenameOut = __DIR__ . '/images/' . basename($_POST['text']);
//
//$contentOrFalseOnFailure   = file_get_contents($filenameIn);
//$byteCountOrFalseOnFailure = file_put_contents($filenameOut, $contentOrFalseOnFailure);
//if (isset($_POST['text'])) {
//    $content = file_get_contents($_POST['text']);
//    $img_path = '/images/';
//    file_put_contents($img_path, $content);
//    $img = "<img src=\"" . $img_path . "\"/>";
//}
//echo $img;
?>