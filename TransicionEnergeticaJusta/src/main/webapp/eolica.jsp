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
                <section class="section">
                    <a href="hidraulica.jsp" class="button w-button">Energia Hidraulica</a>
                    <a href="eolica.jsp" class="button w-button">Energia <br> Eolica</a>
                    <a href="solar.jsp" class="button w-button">Energia <br> Solar</a>
                    <a href="nuclear.jsp" class="button w-button">Energia <br> Nuclear</a>
                    <a href="biomasa.jsp" class="button w-button">Energia <br> Biomasa</a>
                    <a href="mareomotriz.jsp" class="button w-button">Energia Mareomotriz</a>
                </section>
                <div class="w-layout-blockcontainer container-3 w-container">
                    <section class="hero-heading-center-2">
                        <div class="container-4">
                            <div class="imagen1"><img src="resources/images/Logo.png" height="120" style="margin-left: 300px;" />
                                <h1 class="centered-heading margin-bottom-32px">Energia Eolica</h1>
                                La energía eólica es una fuente de energía renovable que se obtiene de la fuerza del viento para generar electricidad. Se trata de una energía inagotable y no contaminante, ya que no emite gases de efecto invernadero. 
                                La energía eólica se produce a través de los aerogeneradores, también conocidos como turbinas eólicas, que transforman la energía cinética del viento en energía eléctrica. 
                                <Br></Br>
                                Los aerogeneradores tienen las siguientes partes:
                                Palas o aspas: Se encuentran en la parte superior del aerogenerador y giran con la fuerza del viento.
                                Rotor: Une las palas y el buje, que facilita el giro.
                                Veleta: Mide la velocidad y la dirección del viento.
                                Góndola: Contiene los dispositivos que transforman la energía.
                                Multiplicador: Aumenta la velocidad de giro del rotor.
                                Torre: Sostiene las palas y la góndola. 
                                La energía eólica es una de las energías renovables más eficientes y maduras. Sin embargo, tiene algunas desventajas, como:
                                <Br></Br>
                                - La falta de seguridad en la existencia de viento.
                                <Br></Br>
                                - La velocidad no puede exceder un límite.
                                <Br></Br>
                                - Se necesitan construir líneas de alta tensión.
                                <Br></Br>
                                - Implica un impacto medioambiental.
                                <Br></Br>
                                - Los parques eólicos ocupan grandes áreas.
                                <Br></Br>
                                - Para generar electricidad, se construyen embalses para retener el agua y aprovechar la diferencia de altura entre dos masas de agua.</h1>
                                <h1 class="centered-heading margin-bottom-32px">Energía Eolica en Colombia</h1>
                                corde con una publicación reciente en la plataforma X del Dr. Adrián Correa, Director de la Unidad Minero Energética (UPME), a julio de 2024, Colombia cuenta con una capacidad instalada de 1,820 GW de energía renovable (solar y eólica) conectados a la red. De estos, 1,273 GW están en operación y 547 MW en pruebas. Estos recursos aportan al país 10,461 GWh de energía al día, representando el 5.72% de participación en el mercado.
                                <Br></Br>
                                Estas cifras demuestran la diversificación de la matriz energética de generación eléctrica en Colombia, la cual busca reducir la dependencia de recursos tradicionales como las grandes hidroeléctricas y las térmicas a carbón y gas, para pasar a recursos de bajas emisiones en su producción de energía.
                                <Br></Br>
                                Este cambio ha sido impulsado en parte por los incentivos fiscales a las inversiones en fuentes no convencionales de energía a partir de la Ley 1715 de 2014, la cual contempla:
                                <Br></Br>
                                Un 50% del valor de la inversión como descuento en el impuesto sobre la renta aplicable durante un periodo de 15 años.
                                Exclusión del IVA y de los aranceles de importación.
                                Depreciación acelerada de los activos.
                                Además, los fuertes compromisos asumidos por Colombia a nivel internacional en reducción de emisiones, consagrados en la Ley 2169 del 22 de diciembre de 2021, han sido fundamentales. Esta norma establece metas nacionales de mitigación mediante las cuales se busca:
                                <Br></Br>
                                Reducir las emisiones de gases de efecto invernadero (GEI) en un 51% o 169.4 MTonCO2e para 2030 según el escenario de referencia.
                                Alcanzar la carbono neutralidad para 2050.
                                Recientemente, el Gobierno colombiano ha mostrado especial interés en el desarrollo de proyectos de hidrógeno verde y azul, geotermia y energía eólica marina, como se detalla a continuación:
                                <Br></Br>
                                <h4>Hidrógeno Verde y Azul</h4>
                                En agosto de 2022 se estableció el Decreto 1476 de Fomento de la Innovación, Investigación, Producción, Almacenamiento, Distribución y Uso del Hidrógeno. Este decreto permite que los proyectos de hidrógeno verde utilicen electricidad de la red si está respaldada por un contrato bilateral de suministro y certificados de energía renovable emitidos por un tercero bajo estándares internacionales reconocidos. Los proyectos de hidrógeno azul deben contar con un sistema de captura y almacenamiento de carbono (CCUS).
                                <Br></Br>
                                <h3>Geotermia</h4>
                                    Para el desarrollo de esta tecnología, en 2022 se establecieron varios instrumentos normativos:
                                    <Br></Br>
                                    Decreto 1318 de 2022 para el desarrollo de actividades orientadas a la generación de energía eléctrica a través de energía geotérmica.
                                    Resolución 561 de 2022 del Ministerio de Ambiente y Desarrollo Sostenible, que estableció los términos de referencia TdR-019 para proyectos de exploración de energía geotérmica cuya capacidad instalada sea igual o superior a 10 MW.
                                    Resolución 40302 de 2022 del Ministerio de Minas y Energía, que establece los requisitos para el Registro Geotérmico y los Permisos de Exploración y Explotación del Recurso Geotérmico.
                                    <h4>Eólica Marina</h4>
                                    En octubre de 2023, se lanzó la primera ronda para la asignación de Permisos de Ocupación Temporal sobre zonas marítimas con la publicación de los pliegos de condiciones. El plazo para presentar los documentos de calificación para participar se amplió hasta el 27 de septiembre de 2024. Una vez seleccionadas las empresas que participarán, se presentará la solicitud de designación del área de interés con fecha límite del 20 de diciembre de 2024. La asignación de las áreas está prevista para agosto de 2025 y la entrega del permiso de ocupación temporal (8 años) en diciembre de 2025. El adjudicatario deberá realizar los estudios pertinentes sobre el área y tramitar la respectiva licencia ambiental para que se le otorgue la concesión para la construcción, operación y mantenimiento del parque eólico por 30 años, prorrogables por 15 años más.
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
    </body>

</html>

