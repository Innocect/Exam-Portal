<?php
require_once "config.php";
/*PHP will check if the file is already been included or
and it will not be included again  */
$username = $password = $confirmpass ="";
$username_err = $password_err = $confirmpass_err ="";
if($_SERVER['REQUEST_METHOD']=="POST")
{
    // To check if username is empty
    if(empty($_POST['username']))  //excluding trim in here
    {
        $username_err = "Username cannot be blank: ";
    }
    else
    {
        $sql = "SELECT id FROM users WHERE username = ?";
        $stmt = mysqli_prepare($conn,$sql);
        // bind the parameters to the stmt
        if(stmt)
        {
            $param_username = trim($_POST['username']);
            mysqli_stmt_bind_param($stmt,"s",$param_username);
            // try to execute the statement
            if(mysqli_stmt_execute($stmt))
            {
                mysqli_stmt_store_result($stmt);
                // to check if the username is taken or not
                if((mysqli_stmt_num_rows($stmt)) == 1)
                {
                    // this means the username is taken
                    $username_err = "The username already exists: ";
                }
                else
                {
                    $username = trim($_POST['username']);
                }
            }
            else
            {
                echo "Something went wrong"; // the execute statement did
                // not work
            }
        }
        
    }
    mysqli_stmt_close($stmt);



//Check for password
if(empty(trim($_POST['password'])))
{
    $password_err="password cannot be empty";
}
elseif((trim($_POST['password'])<5))
{
    $password_err="password cannot be less than 5 chars";
}
else
{
    $password = trim($_POST['password']);
}

// check for confirm password field
if(trim($_POST['password']!=trim($password)))
{
    $password_err = "passwords don't match";
} 
if(empty($password_err)&&empty($username_err)&&empty($confirmpass_err))
{
    $sql = "INSERT INTO users (username,password) VALUES (?,?)";
    $stmt = mysqli_prepare($conn,$sql);
    if($stmt)
    {
        $param_username = $username;
        $param_password = password_hash($password,PASSWORD_DEFAULT);
        mysqli_stmt_bind_param($stmt,'ss',$param_username,$param_password);

        if(mysqli_stmt_execute($stmt))
        {
            header("location: login.php");
        }
        else
        {
            echo "Something went wrong: ";
        }
    }
    mysqli_stmt_close($stmt);
}
mysqli_close($conn);

}
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Login system</title>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Php login system</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact us!</a>
      </li>
      
    </ul>
  </div>
</nav>

<div class="container mt-4">
<h2>Please register first!</h2>
<hr>
<form action="" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Username</label>
      <input type="username" class="form-control" name="username" id="inputEmail4" placeholder="Email">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <input type="password" class="form-control" name="password" id="inputPassword4" placeholder="Password">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Confirm password</label>
      <input type="password" class="form-control" name="confirm_password" id="inputPassword" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
  </div>
  <div class="form-group">
    <label for="inputAddress2">Address 2</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Sign in</button>
</form>

</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>