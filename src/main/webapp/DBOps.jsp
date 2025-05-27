<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         errorPage="Error.jsp" %>
<html>
<head>
    <title>DataBase</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<%
    String userID = request.getParameter("userId");
    if (userID == null || userID.isEmpty()) {
        throw new RuntimeException("Please enter valid ID");
    }

    Class.forName("org.postgresql.Driver");
    String url = "jdbc:postgresql://localhost:5432/students";
    String userName = "postgres";
    String pass = "419650";
    String fetch = "SELECT * FROM student WHERE student_id=?";
    Connection connection = DriverManager.getConnection(url, userName, pass);
    PreparedStatement st = connection.prepareStatement(fetch);

    st.setInt(1, Integer.parseInt(userID));
    ResultSet studentSet = st.executeQuery();
    if (studentSet.next()) {
%>
<div class="result-container">
    <h1>Student Details</h1>
    <p><strong>ID:</strong> <%= studentSet.getInt("student_id") %>
    </p>
    <p><strong>Name:</strong> <%= studentSet.getString("first_name") + " " %>
        <%= studentSet.getString("last_name") %>
    </p>
    <p><strong>Age:</strong> <%= studentSet.getInt("age") %>
    </p>
    <p><strong>Email:</strong> <%= studentSet.getString("email") %>
    </p>
    <p><strong>Major:</strong> <%= studentSet.getString("major") %>
    </p>
    <p><strong>GPA:</strong> <%= studentSet.getFloat("gpa") %>
    </p>
</div>
<a href="index.jsp" class="btn"><- Back </a>
<%
} else {
%>
<div class="error-container">
    <h2>Please enter valid ID</h2>s
</div>
<a href="index.jsp" class="error-btn"><-Back</a>
<%
    }
%>
</body>
</html>
