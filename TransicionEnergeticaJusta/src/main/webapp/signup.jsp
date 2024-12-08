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
            <div class="form">
                <form class="register-form" action="signup.jsp" method="post">
                    <input type="text" name="nombre" placeholder="Nombre" />
                    <input type="text" name="apellido" placeholder="Apellido" />
                    <input type="number" name="celular" placeholder="Celular" />
                    <input type="text" name="email" placeholder="Email" />
                    <input type="password" name="contrasena" placeholder="Contraseña" />          
                    <button type="submit">Crear</button>
                    <p class="message">Ya estas registrado? <a href="login.jsp">Iniciar sesión</a></p>
                </form>
            </div>
        </div>
        <%
          String nombre = request.getParameter("nombre");
          String apellido = request.getParameter("apellido");
          String email = request.getParameter("email");
          String celular = request.getParameter("celular");
          String contrasena = request.getParameter("contrasena");

          if (nombre != null && apellido != null && celular != null && email != null && contrasena != null) {
              String url = "jdbc:mysql://localhost:3306/transicionEnergetica";
              String username = "root";
              String password = "your_password";
              Connection conn = null;
              PreparedStatement pstmt = null;

              try {
                  Class.forName("com.mysql.cj.jdbc.Driver");
                  conn = DriverManager.getConnection(url, username, password);
                  String sql = "INSERT INTO usuario (perfilId, nombre, apellido, celular, email, contrasena) VALUES (?, ?, ?, ?, ?, ?)";
                  pstmt = conn.prepareStatement(sql);
                  pstmt.setInt(1, 2);
                  pstmt.setString(2, nombre);
                  pstmt.setString(3, apellido);
                  pstmt.setLong(4, Long.parseLong(celular));
                  pstmt.setString(5, email);
                  pstmt.setString(6, contrasena);
                  int rows = pstmt.executeUpdate();

                  if (rows > 0) {
                  request.setAttribute("action", "Registro exitoso! Iniciar sesión ");
                  } else {
                  request.setAttribute("action", "Error al registrar el usuario.");
                  }
              } catch (Exception e) {
                  e.printStackTrace();
                  out.println("Error: " + e.getMessage());
              } finally {
                  if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                  if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
              }
          }
          String actionMessage = (String) request.getAttribute("action");
            if (actionMessage != null) {
        %>
        <script>
            alert("<%= actionMessage %>");
        </script>
        <%
            }
        %>
    </body>
</html>

