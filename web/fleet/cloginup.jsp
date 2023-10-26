<%-- 
    Document   : login
    Created on : 19 Aug, 2022, 7:34:09 PM
    Author     : Aniket
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   
    <link rel="stylesheet" href="login.css">
    <!-- Fontawesome CDN Link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
     <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <input type="checkbox" id="flip">
    <div class="cover">
      <div class="front">
        <img src="img/frontImg.jpg" alt="">
        <div class="text">
          <span class="text-1">Fleet & Transportation</span>
          <span class="text-2">Let's get connected with Our services</span>
        </div>
      </div>
      <div class="back">
        <img class="backImg" src="img/backImg.jpg" alt="">
        <!--<div class="text">
          <span class="text-1">Complete miles of journey <br> with one step</span>
          <span class="text-2">Let's get started</span>
        </div>-->
      </div>
    </div>
    <div class="forms">
        <div class="form-content">
          <div class="login-form">
               <div class="log">   <i class='bx bxs-user bx-flip-horizontal bx-burst' style='color:#8400ff'  ></i></div>&nbsp;&nbsp;<br>
              <br>
              <br>
              &nbsp;
              <div class="title">  Login</div>
          <form action="addcus.jsp">
            <div class="input-boxes">
                <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your name" name="a" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text"  placeholder="Enter your email" name="b" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password"    placeholder="Enter your password" name="c" required>
              </div>
              <div class="text"><a href="#">Forgot password?</a></div>
              <div class="text"><a href="clogin.jsp">Already have an account?</a></div>
              <div class="button input-box">
                <input type="submit" value="Sumbit">
              </div>
              <!--<div class="text sign-up-text">Don't have an account? <label for="flip">Sigup now</label></div>
            </div>
        </form>
      </div>
        <div class="signup-form">
          <div class="title">Signup</div>
        <form action="#">
            <div class="input-boxes">
              <div class="input-box">
                <i class="fas fa-user"></i>
                <input type="text" placeholder="Enter your name" required>
              </div>
              <div class="input-box">
                <i class="fas fa-envelope"></i>
                <input type="text" placeholder="Enter your email" required>
              </div>
              <div class="input-box">
                <i class="fas fa-lock"></i>
                <input type="password" placeholder="Enter your password" required>
              </div>
              <div class="button input-box">
                <input type="submit" value="Sumbit">
              </div>
              <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
            </div>
      </form>
    </div>
    </div>
    </div>
  </div>
</body>
</html>
