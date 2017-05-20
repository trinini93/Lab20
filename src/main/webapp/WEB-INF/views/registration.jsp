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

        input[type=select] {
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
            <form:form name="summary" method="post" action="/addUser" onsubmit="return validateForm();">

            <%--<form:form name="summary" method="post" action="/addUser">--%>
            <table align=""> <!--centering table-->
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" required></td><%--required will prompt user to fill something out (name in this case) that they might've missed--%>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" required></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="age" required></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><input type="text" name="phoneNum" required></td>
                </tr>

                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" required></td>
                </tr>

                <tr>
                    <td>Confirm PW:</td>
                    <td><input type="password" name="confirmPassword" required></td>
                </tr>

                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="ID" required></td>
                </tr>
            </table>

        </div>

        <%--<div class="col-md-4">--%>
            <%--<h3>Favorite Coffee Blend</h3> <!--dropdown is out of table tag above-->--%>
            <%--<br>--%>
            <%--&lt;%&ndash;<select name="coffeeBlend"> <form:label path="coffeeBlend">Favorite Coffee Blend</form:label>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="Bold Java">Bold Java</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="So-so Front End">So-so Front End</option>&ndash;%&gt;--%>
                <%--&lt;%&ndash;<option value="Lightweight C#">Lightweight C#</option>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</select>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</br>&ndash;%&gt;--%>
        <%--</div>--%>

        <div class="col-md-4">
            <h3>Favorite Coffee Blend</h3>
            <input type="radio" name="favoriteCoffeeBlend" value="Bold Java">Bold Java<br>
            <input type="radio" name="favoriteCoffeeBlend" value="So-so Front End">So-so Front End<br>
            <input type="radio" name="favoriteCoffeeBlend" value="Lightweight C#">Lightweight C#<br>
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

    <script>
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

    <script>
        function validateForm () {

            var phoneNum = document.forms ["summary"] ["phoneNum"].value;
            var email = document.forms ["summary"] ["email"].value;
            var name = document.forms ["summary"] ["name"].value;
            var age = document.forms ["summary"] ["age"].value;
            var password = document.forms ["summary"] ["password"].value;
            var confirmPassword = document.forms ["summary"] ["confirmPassword"].value;
            var ID = document.forms ["summary"] ["ID"].value;

            if (email.length < 2
                || phoneNum.length < 2
                || name.length < 2
                || age.length < 2
                || password.length < 2
                || confirmPassword.length < 2
                || ID.length < 2) {
                alert("Input must be longer than 2 characters.");
                return false;
            }

            if (password != confirmPassword) {
                alert("Passwords do not match! Please reenter.");
                return false;
            }

            return true; //return true if passwords match, characters more than 2
        }
    </script>
</body>
</html>