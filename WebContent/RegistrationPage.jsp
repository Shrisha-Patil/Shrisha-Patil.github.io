<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="RegistrationPage.css">

  <title>Registration Page</title>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script>
  jQuery(window).load(function(){
    jQuery(".popcorn-loader-overlay").fadeOut(1000);
  });
  </script>

  <noscript>
    <style>.popcorn-loader-overlay { display: none; } </style> </noscript>

  </head>

  <body>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="RegistrationPage.js"></script>

    <div class="popcorn-loader-overlay"></div>


    <h1 style="text-align:center;">Register for an Account</h1>

    <div class="signup-w3ls">

      <div class="signup-agile1">

        <form action="#" method="post">

          <div class="form-control">
            <label class="header">Name(*):</label>
            <input type="text" title="Name" id="name" name="name" placeholder="Name"
            required method="post">
          </div>

          <div class="form-control">
            <label class="header">Phone Number(*):</label>
            <input type="tel" title="Phone Number" id="phone_number" name="phone_number"
            placeholder="Phone Number" method="post" title="Please enter your Phone Number" required>
          </div>

          <div class="form-control">
            <label class="header">Email(*):</label>
            <input type="email" title="Email" id="email" method ="post" name="email" placeholder="Email" required>
          </div>

          <div class="form-control">
            
            <label class="header" name="password" id="password" type="password" title="password" method="post" placeholder="Password" required>Password(*):</label>
            <input type="password" id="password" title="Password" name="password" placeholder="Password" required/>
          </div>
          <br>

        <div class="form-control">
          <label class="header">City(*):</label>
          
          <input type="city" title="city" id="city" method ="post" name="city" placeholder="City" required>
        </div>


        <div class="form-control">
          <label class="header">Profile Photo(optional):</label>

          <input id="image" title="Profile Photo" type="file" name="profile_photo" placeholder="Photo" method="post" capture>
        </div>


        <br>

        <div class="form-control">
          <label class="header" title="Gender">Gender(*):</label><select name="gender" method="post" required>
            <option value=" " selected> EMPTY </option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Rather Not Say">Rather Not Say</option>
          </select>
        </div>

        <br>


        <div class="form-control">
          <label class="header" title="Type of User">Type of User(*)</label><select name="type_of_user" method="post" required>
            <option value=" " selected> EMPTY </option>
            <option value="Customer">Customer</option>
            <option value="Manager">Manager</option>
            <option value="Both">Both</option>
          </select>
        </div>


        <br>
        <div>
          <input style="text-align: center;" type="submit" class="register" title="Submit" method="post" value="Register">
        </div>



      </div>

    </body>
    </html>