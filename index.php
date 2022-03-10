<?php
  session_start();
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Untitled</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="assets/css/styles.css">
</head>

<body>
    <div class="login-dark">
        
        <form method="post" action="login_process.php" onsubmit="return validate();">
           
            <h2 class="sr-only">Login Form</h2>
            <div class="illustration">
                <i class="icon ion-ios-locked-outline"></i>
            </div>
             <?php if(@$_SESSION['msg']) { ?>
          <h6 style="color: #f00;"><?php echo $_SESSION['msg']; ?></h6>
            <?php } ?>
            <div class="form-group">
                <input class="form-control" type="email" id="email" name="email" placeholder="Email">
            </div>
            <div class="form-group">
                <input class="form-control" type="password" id="password" name="password" placeholder="Password">
            </div>
            <div class="form-group">
                <button class="btn btn-primary btn-block" type="submit" name="submit">Log In</button></div><a class="forgot" href="#">Forgot your email or password?</a></form>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script type="text/javascript">
    function validate()
      {
          var email = document.getElementById('email');
          var password = document.getElementById('password');

          if(email.value == "")
          {
              alert("Please enter your email.");
              email.focus();
              return false;
          }

          if(password.value == "")
          {
              alert("Please enter your password.");
              password.focus();
              return false;
          }
      }

    </script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    <?php
        unset($_SESSION['msg']);
    ?>
</body>

</html>