<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>Registration Page</title>
    <link href="../resources/style.css" rel="stylesheet"> <!--linking style sheet/css-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!--linking css-->
    <link href="../resources/style.css" rel="stylesheet">


    <!--style for form colors input & password-->
    <style>
        input[type=text] {
            color: black;
        }

        input[type=password] {
            color: black;
        }


    </style>
</head>
<body>


<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h3>Please fill out the form below to register: </h3>
            <form:form method="POST" action="/addUser">
            <table align="center"> <!--centering table-->
                <tr>
                    <td><form:label path="name">Name</form:label></td>
                    <td><form:input path="name"/></td>
                </tr>
                <tr>
                    <td><form:label path="email">Email</form:label></td>
                    <td><form:input path="email"/></td>
                </tr>
                <tr>
                    <td><form:label path="age">Age</form:label></td>
                    <td><form:input path="age"/></td>
                </tr>
                <tr>
                    <td><form:label path="phoneNum">Phone Number</form:label></td>
                    <td><form:input path="phoneNum"/></td>
                </tr>

                <tr>
                    <td><form:label path="password">Password</form:label></td>
                    <td><form:password path="password"/></td> <!--change input to 'password' so the pass is masked -->
                </tr>

                <tr>
                    <td><form:label path="confirmPassword">Confirm Password</form:label></td>
                    <td><form:password path="confirmPassword"/></td> <!--change input to 'password' so the pass is masked -->
                </tr>

                <tr>
                    <td><form:label path="ID">ID</form:label></td>
                    <td><form:input path="ID"/></td>
                </tr>
            </table>

        </div>

        <div class="col-md-4">
            <h3>Favorite Coffee Blend</h3> <!--dropdown is out of table tag above-->
            <br>
            <select name="coffeeBlend"> <form:label path="coffeeBlend">Favorite Coffee Blend</form:label>
                <option value="Bold Java">Bold Java</option>
                <option value="So-so Front End">So-so Front End</option>
                <option value="Lightweight C#">Lightweight C#</option>
            </select>
            </br>
        </div>

        <div class="col-md-4">
            <h3>Favorite Store Location</h3>
            <select name="storeLocation"> <form:label path="storeLocation">Favorite Store Location</form:label>
                <option value="123 Main St.">123 Main St.</option>
                <option value="456 John R.">456 John R.</option>
                <option value="789 Woodward St.">789 Woodward St.</option>
            </select>
            </br>
        </div>
    </div>


    <table> <!--reopening table tag for submit button-->
        <tr>

            <td colspan="2">
                <input type="submit" value="Submit"/>
            </td>
        </tr>
    </table>

    </form:form>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</body>
</html>