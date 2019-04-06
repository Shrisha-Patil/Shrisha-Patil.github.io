<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="ForgotPassword.css">

  <title>Forgot Password</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
    jQuery(window).load(function(){Ã
      jQuery(".popcorn-loader-overlay").fadeOut(1000);
    });
  </script>

  <noscript>
    <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

  </head>

  <body>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="ForgotPassword.js"></script>

    <div class="popcorn-loader-overlay"></div>

    <h1 style="text-align:center;">Enter OTP</h1>

    <div style="text-align:center;" class="otp">
      <label class="otp">Enter OTP:</label>
      <input type="text" title="otp" id="otp" name="otp" placeholder="OTP"
      required method="post">
    </div>

    <br>

    <div style="text-align:center;">
      <input type="submit" id="enter-otp" value="Enter OTP" required method="post">
    </div>

  </body>

  </html>