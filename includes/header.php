<?php
include("includes/config.php");
include("includes/classes/User.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");
include("includes/classes/Song.php");
include("includes/classes/Playlist.php");

if(isset($_SESSION['userLoggedIn'])) {
    $userLoggedIn =
    $userLoggedIn = new User($con, $_SESSION['userLoggedIn']);
    $username = $userLoggedIn->getUsername();
    echo "<script>userLoggedIn = '$username';</script>";
}
else {
    header("Location: register.php");
}

?>
<html lang="en">
<head>
    <title>Lion Motivation</title>
    <link rel="stylesheet" type="text/css" href="assets/css/style2.css">
    <link rel="shortcut icon" href="assets/images/icons/icons8_lion.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="assets/js/script.js"></script>


</head>

<body>




<div id="mainContainer" class="mainContainer">
    <div id="topContainer" class="topContainer">

        <?php include ("includes/navBarContainer.php") ?>

        <div id="mainViewContainer" class="mainViewContainer">

            <div id="mainContent" class="mainContent">