<?php
include("includes/includedFiles.php");

?>

<div class="userDetails">
    <div class="container borderBottom">
        <h2>EMAIL</h2>
        <input type="text" class="email" name="email" placeholder="Email Address..." value="<?php echo $userLoggedIn->getEmail(); ?>">
        <span class="message"></span>
        <button class="button green" onclick="UpdateEmail('email')">SAVE</button>
    </div>
    <div class="container">
        <h2>PASSWORD</h2>
        <input type="password" class="oldPassword" name="oldPassword" placeholder="Current password">
        <input type="password" class="NewPassword1" name="NewPassword1" placeholder="New password">
        <input type="password" class="NewPassword2" name="NewPassword2" placeholder="Confirm password">
        <span class="message"></span>
        <button class="button green" onclick="UpdatePassword('oldPassword', 'NewPassword1', 'NewPassword2')">SAVE</button>
    </div>
</div>
