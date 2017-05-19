<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <title>Coffee Shop Lab</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!--linking css-->
    <link href="../resources/style.css" rel="stylesheet">
</head>
<body>
<h2>Welcome to Trina's Coffee Shop!</h2>
<center> <h3>Menu</h3>
    <table border = "1">
    <c:forEach items = "${result}" var="list">
        <tr>
            <td>
        <c:out value = "${list.coffeeType}"></c:out>
        <c:out value = "${list.description}"></c:out>
        <c:out value = "${list.price}"></c:out>
            </td>
        </tr>
    </c:forEach>
    </table>
</center>

<a href="/registration">Click here to register!</a>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>



</body>
</html>
