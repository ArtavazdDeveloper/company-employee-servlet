<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %><%--
  Created by IntelliJ IDEA.
  User: Artavazd
  Date: 23.04.2023
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Create Employee</title>
</head>
<% List<Company> companies = (List<Company>) request.getAttribute("Companies"); %>
<body>
<a href="/employees"> Back </a>

<h2>Create Employee</h2>
<form action="/createEmployee" method="post">
    name:<input type="text"name="name"><br>
    surname:<input type="text"name="surname"><br>
    email:<input type="text"name="email"><br>
    <select name="company_id">
        <%for (Company company : companies) {%>
        <option value="<%=company.getId()%>"><%=company.getName()%> </option>
        <%}%>
    </select>
    <input type="submit" value="add">
</form>
</body>
</html>
