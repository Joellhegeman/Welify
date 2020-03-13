<?php
include("includes/includedFiles.php");
?>

<div class="entityInfo">
    <div class="centerSection">
        <div class="userInfo">
            <h1><?php echo $userLoggedIn->GetFirstAndLastName(); ?></h1>
        </div>
    </div>

    <div class="buttonItems">
        <button class="button green" onclick="openPage('updateDetails.php')">USER DETAILS</button>
        <button class="button red" onclick="logout()">LOGOUT</button>
        <button class="button white" onclick="openPage('uploadMusic.php')">UPLOAD MUSIC</button>
    </div>
</div>
