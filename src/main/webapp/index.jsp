<%--
  Created by IntelliJ IDEA.
  User: danielleturner
  Date: 3/30/22
  Time: 11:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%--Page directive--%>
<%! int counter = 0; %><%--Instance of a variable--%>
<% counter += 1; %><%--Evaluate Java expression--%>
<% request.setAttribute("message", "Hello Danny keep going you will get a good job soon!!!"); %>
<html>
<head>
    <%@ include file="partials/navbar.jsp" %>
    <title>Counter Page</title>
</head>
<body>

<h1>The current count is <%= counter %>.</h1><%--Out put resluts--%>

<h5>Experiment number 3 - do we need a servlet to access a paramter</h5>

<h5>Do we see the reulst from out query string? <br> My fav food is: ${param.fav_food} </h5>
<%--USE this verbage: ?fav_food=.is name of param..then put in your response beans+rice--%>

<h5>What was our secret message?<br>
    ${message}</h5>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->

</body>
</html>
