<%-- 
    Document   : Validar
    Created on : 30-10-2018, 10:45:26
    Author     : Neo Jigoku
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <%
            
                String rut=request.getParameter("txtRut");
                String password=request.getParameter("txtPas");
                try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/QueryPrice","root","");
                String query = "SELECT * FROM Persona WHERE rut='"+rut+"' and contraseña='"+password+"'";
                Statement st=conn.createStatement();
                ResultSet rs=st.executeQuery(query);
                if(rs.next()){%>
                <script language="javascript" type="text/javascript">
                    alert("Bienvenido")
                </script>
                <%
                }else{%>
    <script language="javascript" type="text/javascript">
                    function preguntar()
                       {
                             alert("Lo sentimos no existe en la base de datos");
                            setTimeout(function(){location.href = "Login.jsp";},0.01);
                           } 
                     document.writeln(preguntar());
                </script>
                <%
                }}catch(SQLException ex){
            throw new SQLException(ex);
            }
            %>
    </body>
</html>
