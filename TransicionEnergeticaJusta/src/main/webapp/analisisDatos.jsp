<%@page import="java.sql.*,java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>Transicion Energetica Justa</title>
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Webflow" name="generator" />
        <link href="resources/css/content.css" rel="stylesheet" type="text/css" />
    </head>

    <body class="body">
        <div class="navbar-logo-left">
            <div data-animation="default" data-collapse="medium" data-duration="400" data-easing="ease" data-easing2="ease"
                 role="banner" class="navbar-logo-left-container shadow-three w-nav">
                <div class="container"></div>
                <div class="navbar-wrapper">
                    <nav role="navigation" class="nav-menu-wrapper w-nav-menu">
                        <ul role="list" class="nav-menu-two w-list-unstyled">
                            <li class="list-item"><a href="main.jsp" class="nav-link">Inicio</a></li>
                            <li><a href="gestionDatos.jsp" class="nav-link">Gestión Datos</a></li>
                            <li><a href="analisisDatos.jsp" class="nav-link">Análisis Datos</a></li>
                            <li><a href="index.jsp" class="nav-link">Cerrar Sesión</a></li>
                        </ul>
                    </nav>
                    <div class="menu-button w-nav-button">
                        <div class="w-icon-nav-menu"></div>
                    </div>
                </div>
            </div>
        </div>
        <section class="hero-heading-center content-container">
            <div class="graficos">
                <div class="grafico1"><img src="Logo.png" alt="Logo 1"></div>
                <div class="grafico2"><img src="Logo.png" alt="Logo 2"></div>
            </div>
            <div class="tabla">
                <div class="tabla-contenedor">
                    <table class="tabla-profesional">
                        <thead>
                            <tr>
                                <th>Tipo de Energía</th>
                                <th>Región</th>
                                <th>País</th>
                                <th>Año</th>
                                <th>Producción</th>
                                <th>Consumo</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                String url = "jdbc:mysql://localhost:3306/transicionEnergetica";
                                String username = "root";
                                String password = "your_password";
                                Connection conn = null;
                                Statement stmt = null;
                                ResultSet rs = null;

                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                    conn = DriverManager.getConnection(url, username, password);
                                    String sql = "SELECT te.nombre tipo, r.nombre region, er.pais, er.anio, er.produccion, er.consumo FROM energiaRenovable er"
                                    + " LEFT JOIN tipoEnergia te ON er.tipoId = te.id"
                                    + " LEFT JOIN region r ON er.regionId = r.id;";
                                    stmt = conn.createStatement();
                                    rs = stmt.executeQuery(sql);

                                    while (rs.next()){
                            %>
                            <tr>
                                <td><%= rs.getString("tipo") %></td>
                                <td><%= rs.getString("region") %></td>
                                <td><%= rs.getString("pais") %></td>
                                <td><%= rs.getInt("anio") %></td>
                                <td><%= rs.getFloat("produccion") %></td>
                                <td><%= rs.getFloat("consumo") %></td>
                            </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                e.printStackTrace();
                                out.println("Error: " + e.getMessage());
                                } finally {
                                if (stmt != null) try { stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                                if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                                if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                                }
                            %>
                        </tbody>
                    </table>
                </div>

            </div>
        </section>
        <section class="footer-subscribe">
            <div class="container">
                <div class="footer-bottom">
                    <div class="footer-social-block-three"><a href="#" class="footer-social-link-three w-inline-block"><img
                                src="https://cdn.prod.website-files.com/62434fa732124a0fb112aab4/62434fa732124a705912aaeb_facebook%20big%20filled.svg"
                                loading="lazy" alt="" /></a><a href="#" class="footer-social-link-three w-inline-block"><img
                                src="https://cdn.prod.website-files.com/62434fa732124a0fb112aab4/62434fa732124ab37a12aaf0_twitter%20big.svg"
                                loading="lazy" alt="" /></a><a href="#" class="footer-social-link-three w-inline-block"><img
                                src="https://cdn.prod.website-files.com/62434fa732124a0fb112aab4/62434fa732124a61f512aaed_instagram%20big.svg"
                                loading="lazy" alt="" /></a><a href="#" class="footer-social-link-three w-inline-block"><img
                                src="https://cdn.prod.website-files.com/62434fa732124a0fb112aab4/62434fa732124a717f12aaea_youtube%20small.svg"
                                loading="lazy" alt="" /></a></div>
                    <div class="footer-copyright">© 2024 Transición Energética Justa. Todos los derechos reservados. "Construyendo un futuro más limpio y resiliente."</div>
                </div>
            </div>
        </section>
    </body>

</html>

