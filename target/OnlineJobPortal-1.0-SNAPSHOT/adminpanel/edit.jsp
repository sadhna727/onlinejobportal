<%-- 
    Document   : edit.jsp
    Created on : 17 Sept 2025, 11:56:59 am
    Author     : rajus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.onlinejobportal.DatabaseConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Page</h1>
        <%
            String id = request.getParameter("id");
            out.print(id + "</br>");

            DatabaseConnection db = new DatabaseConnection();

            String cmd = "select * from jobs where id='" + id + "' ";
            ResultSet rs = db.executeSelect(cmd);
            rs.next();

        %>

        <form method="post" action="update.jsp">
            <input type="hidden" name="id" value="<%=id%>" />
            Update Your Job Title
            <input type="text" class="form-control" name="jobtitle" required value="<%= rs.getString("jobtitle")%>"><br><br>
            
            Update Your Job Type
            <input type="text" class="form-control" name="jobtype" required value="<%= rs.getString("jobtype")%>"><br><br>
            
            Update Your Company Name
            <input type="text" class="form-control" name="companyname" required value="<%= rs.getString("companyname")%>"><br><br>
            
            
            Update Your Company Address
            <input type="text" class="form-control" name="companyaddress" required value="<%= rs.getString("companyaddress")%>"><br><br>
            
            Update Your Minimum Qualification Details
            <input type="text" class="form-control" name="minqualification" required value="<%= rs.getString("minimumqualification")%>"><br><br>
            
            Update Minimum Year of Experience
            <input type="text" class="form-control" name="minexp" placeholder="Minimum Experience" required  value="<%= rs.getString("minyoe")%>"/><br><br>
            Update Skills Required For This Job
            <textarea  class="form-control" name="skills" placeholder="Skills" required ><%= rs.getString("skills")%>"/></textarea><br><br>

            Update Salary Range
           <input type="text" class="form-control" name="salary" placeholder="Salary Range" required  value="<%= rs.getString("salaryrange")%>"/><br><br>

           Update Company Mobile Number
           <input type="text" class="form-control" name="mobile" placeholder="Company Mobile Number"required  value="<%= rs.getString("companymobile")%>"/><br><br>

           Update Company Email Address 
           <input type="text" class="form-control" name="email" placeholder="Company Email Address" required  value="<%= rs.getString("companyemail")%>"/><br><br>

          Update Company Website URL
         <input type="text" class="form-control" name="website" placeholder="Company Website URL" required  value="<%= rs.getString("companywebsite")%>"/><br><br>
         <button> Update</button>

</body>
</html>
