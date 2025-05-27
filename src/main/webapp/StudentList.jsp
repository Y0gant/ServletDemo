<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         errorPage="Error.jsp" %>
<html>
<head>
    <title>Student List</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>
<body>
<a href="index.jsp" class="btn">
    <-Back
</a>
<%
    Class.forName("org.postgresql.Driver");
    String url = "jdbc:postgresql://localhost:5432/students";
    String userName = "postgres";
    String pass = "419650";
    String fetch = "SELECT * FROM student";
    Connection connection = DriverManager.getConnection(url, userName, pass);
    Statement st = connection.createStatement();
    ResultSet set = st.executeQuery(fetch);
%>
<div class="result-container">
    <%
        while (set.next()) {
    %>
    <div class="student-box">
        <div class="student-field"><strong>ID:</strong> <span><%= set.getInt("student_id") %></span></div>
        <div class="student-field"><strong>Name:</strong>
            <span><%= set.getString("first_name") %> <%= set.getString("last_name") %></span></div>
        <div class="student-field"><strong>Age:</strong> <span><%= set.getInt("age") %></span></div>
        <div class="student-field"><strong>Email:</strong> <span><%= set.getString("email") %></span></div>
        <div class="student-field"><strong>Major:</strong> <span><%= set.getString("major") %></span></div>
        <div class="student-field"><strong>GPA:</strong> <span><%= set.getFloat("gpa") %></span></div>
    </div>
    <%}%>
</div>
</body>
</html>