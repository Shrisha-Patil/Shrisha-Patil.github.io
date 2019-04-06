<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" dir="ltr">

<head>

  <meta charset="utf-8">

  <link rel="stylesheet" type="text/css" href="EventManager.css">

  <title>Manage Your Events</title>

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
    <script src="EventManager.js"></script>


    <div class="popcorn-loader-overlay"></div>

    <div style="text-align:center;">
      <h1>Manage Your Events</h1>
    </div>

    <div style="text-align: center;">
      <input type="submit" id="add-event" value="Add Event" >
      <script type="text/javascript">
        document.getElementById("add-event").onclick = function () {
          location.href = "AddEvent.jsp";
        };
      </script>
    </div>

<br>

    <div style="text-align: center;">
      <input type="submit" id="delete-event" value="Delete Event" >
      <script type="text/javascript">
        document.getElementById("delete-event").onclick = function () {
          location.href = "DeleteEvent.jsp";
        };
      </script>
    </div>

<br>

    <div style="text-align: center;">
      <input type="submit" id="update-event" value="Update Event" >
      <script type="text/javascript">
        document.getElementById("update-event").onclick = function () {
          location.href = "EditEvent.jsp";
        };
      </script>
    </div>
