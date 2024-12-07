<%@page import="java.sql.*,java.util.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>Transicion Energetica Justa</title>
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <meta content="Webflow" name="generator" />
        <link href="resources/css/dinamic.css" rel="stylesheet" type="text/css" />
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
        <section class="hero-heading-center">
            <div class="container-2">
                <div class="w-layout-blockcontainer container-3 w-container">
                    <section class="hero-heading-center-2">
                        <h1 class="centered-heading margin-bottom-32px">Gestión de Datos</h1>                              
                        <div class="form">
                            <form action="#" target="" method="get" class="gestion_datos_form" name="formDatosPersonales">
                                <div class="form-group">
                                    <label for="id">ID</label>
                                    <input type="number" name="id" id="id" />
                                </div>
                                <div class="form-group">
                                    <label for="tipo">Tipo de Energía</label>
                                    <input type="text" name="tipo" id="tipo" />
                                </div>
                                <div class="form-group">
                                    <label for="region">Región</label>
                                    <input type="text" name="region" id="region" />
                                </div>
                                <div class="form-group">
                                    <label for="pais">País</label>
                                    <input type="text" name="pais" id="pais" />
                                </div>
                                <div class="form-group">
                                    <label for="anio">Año</label>
                                    <input type="number" name="anio" id="anio" />
                                </div>
                                <div class="form-group">
                                    <label for="produccion">Producción</label>
                                    <input type="number" name="produccion" id="produccion" />
                                </div>
                                <div class="form-group">
                                    <label for="consumo">Consumo</label>
                                    <input type="number" name="consumo" id="consumo" />
                                </div>
                                <div class="button-group">
                                    <input type="submit" name="enviar" value="Consultar" />
                                    <input type="submit" name="enviar" value="Crear" />
                                    <input type="submit" name="enviar" value="Actualizar" />
                                    <input type="submit" name="enviar" value="Eliminar" />
                                </div>
                            </form>
                        </div>
                    </section>
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
<%
            String action = request.getParameter("enviar");

            if (action != null) {
                String url = "jdbc:mysql://localhost:3306/transicionEnergetica";
                String username = "root";
                String password = "your_password";
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                
                String id = request.getParameter("id");
                String tipo = request.getParameter("tipo");
                String region = request.getParameter("region");
                String pais = request.getParameter("pais");
                String anio = request.getParameter("anio");
                String produccion = request.getParameter("produccion");
                String consumo = request.getParameter("consumo");

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, username, password);
                } catch (Exception e) {
                    e.printStackTrace();
                    request.setAttribute("error", "Error: " + e.getMessage());
                } finally {
                    if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
                    if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
                }
            }
        %>

    </body>

</html>

