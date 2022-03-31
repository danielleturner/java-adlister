<%--
  Created by IntelliJ IDEA.
  User: danielleturner
  Date: 3/31/22
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setAttribute("username", request.getParameter("username.value")); %>
<% request.setAttribute("password", request.getParameter("password.value")); %>
<html>
<head>


    <h1 style="text-align: center">Please log in</h1>

    <div class="container" style="text-align: center">

        <form action="login.jsp" method="post">
            <label for="username">UserName:</label><br>
            <input type="text" id="username" name="username" value="" placeholder="username"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" value="" placeholder="password"><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>




    <c:choose>
        <c:when test="${username.equalsIgnoreCase('admin')&& password.equalsIgnoreCase('password')}">
            <p>boolean_expression_1 was true</p>
            <c:redirect url="profile.jsp"/>
        </c:when>
        <c:otherwise>
            <c:redirect url="login.jsp"/>
        </c:otherwise>
    </c:choose>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
</head>
</html>
