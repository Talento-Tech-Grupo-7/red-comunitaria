<%@page import="java.sql.*,java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Transicion Energetica Justa</title>
        <meta charset="utf-8" />
        <link href="resources/css/login.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="login-page">
            <div class="imagen1"><img src="resources/images/Logo.png" height="240"/>
            </div>
            <div class="form" action="index.jsp" method="post">
                <form class="login-form">
                    <input type="text" name="email" placeholder="Email" />
                    <input type="password" name="contrasena" placeholder="Contraseña" />
                    <button type="submit">Ingresar</button>
                    <p class="message">
                        No estas registrado? <a href="signup.jsp">Crea tu cuenta</a>
                    </p>
                </form>
            </div>
        </div>        
        <%
            String email = request.getParameter("email");
            String contrasena = request.getParameter("contrasena");

            if (email != null && contrasena != null) {
                String url = "jdbc:mysql://localhost:3306/transicionEnergetica";
                String username = "root";
                String password = "your_password";
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, username, password);
                    String sql = "SELECT * FROM usuario WHERE email = ? AND contrasena = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, email);
                    pstmt.setString(2, contrasena);
                    rs = pstmt.executeQuery();

                    if (rs.next()) {
                        response.sendRedirect("main.jsp");
                    } else {
                        request.setAttribute("error", "Email o contraseña incorrectos.");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    request.setAttribute("error", "Error: " + e.getMessage());
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            }
            String errorMessage = (String) request.getAttribute("error");
            if (errorMessage != null) {
        %>
        <script>
        alert("<%= errorMessage %>");
        </script>
        <%
            }
        %>
    </body>
</html>

