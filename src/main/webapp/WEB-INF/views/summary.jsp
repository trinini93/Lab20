<%--
  Created by IntelliJ IDEA.
  User: trina2
  Date: 5/8/17
  Time: 6:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Summary Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!--linking css-->
    <link href="../resources/style.css" rel="stylesheet">
</head>
<body>

<h2>Summary Page</h2>
<h3>Thanks for registering! Here is a summary of your registration:</h3>
<table align="center">
<tr>
        <td>Name</td>
        <td>${name}</td>
    </tr>

    <tr>
        <td>Email</td>
        <td>${email}</td>
    </tr>

    <tr>
        <td>Age</td>
        <td>${age}</td>
    </tr>

    <tr>
        <td>Phone Number</td>
        <td>${phoneNum}</td>
    </tr>

    <tr>
        <td>Password</td>
        <td>${password}</td>
    </tr>

    <tr>
        <td>Confirm Password</td>
        <td>${confirmPassword}</td>
    </tr>

    <tr>
        <td>ID</td>
        <td>${ID}</td>
    </tr>

    <tr>
        <td>Favorite Coffee Blend</td>
        <td>${coffeeBlend}</td>
    </tr>

    <tr>
        <td>Favorite Store Location</td>
        <td>${storeLocation}</td>
    </tr>
</table>
</body>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>
</body>
</html>
