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
                                <h1 class="centered-heading margin-bottom-32px">Energia Nuclear</h1>
                                La energía nuclear es una forma de energía que se libera desde el núcleo o parte central de los átomos, que consta de protones y neutrones. Esta fuente de energía puede producirse de dos maneras: mediante fisión (cuando los núcleos de los átomos se dividen en varias partes) o mediante fusión (cuando estos se fusionan).
                                <Br></Br>
                                La fisión nuclear es el método que se utiliza hoy día en todo el mundo para producir electricidad a partir de energía nuclear, mientras que la tecnología para generar electricidad a partir de la fusión se encuentra en fase de I+D.
                                <Br></Br>
                                <h4>Energía nucleoeléctrica y cambio climático</h4>
                                La energía nucleoeléctrica es una fuente de energía de bajas emisiones de carbono, ya que, a diferencia de las centrales de carbón, petróleo o gas, las centrales nucleares no producen prácticamente CO2 durante su funcionamiento. Los reactores nucleares generan cerca de una tercera parte del total mundial de electricidad sin emisiones de carbono y son cruciales para lograr los objetivos relacionados con el cambio climático.
                                <Br></Br>
                                <h4>¿Qué papel desempeña el OIEA?</h4>
                                - El OIEA establece y promueve normas internacionales y orientaciones respecto del uso tecnológica y físicamente seguro de la energía nuclear para proteger a las personas y el medio ambiente.
                                <Br></Br>
                                - El OIEA presta apoyo a los programas nucleares existentes y nuevos de todo el mundo proporcionando apoyo técnico y promoviendo la gestión del conocimiento. Mediante el enfoque de los hitos, el OIEA facilita conocimientos técnicos especializados y orientaciones, tanto a aquellos países que quieren desarrollar un programa de energía nucleoeléctrica como a los que están clausurándolo.
                                <Br></Br>
                                - A través de sus actividades de salvaguardias y verificación, el OIEA vigila que los materiales y tecnologías nucleares no se desvíen de los usos pacíficos.
                                <Br></Br>
                                - Las misiones de examen y los servicios de asesoramiento dirigidos por el OIEA ofrecen orientaciones sobre las actividades que deben llevarse a cabo durante el ciclo de vida de producción de energía nuclear: desde la extracción de uranio hasta la construcción, el mantenimiento y la clausura de centrales nucleares y la gestión de los desechos nucleares.
                                <Br></Br>
                                - El OIEA gestiona una reserva de uranio poco enriquecido (UPE) en Kazajstán, a la que pueden acudir como último recurso los países que necesiten urgentemente UPE con fines pacíficos.
                                <Br></Br>
                                <h1 class="centered-heading margin-bottom-32px">Energía Nuclear en Colombia</h1>
                                La cooperación internacional juega un papel crucial en el desarrollo de la infraestructura nuclear de Colombia. La colaboración tanto con la IAEA como con otros países expertos en tecnología nuclear avanzada no solo proporcionará acceso a mejores prácticas y estándares de seguridad, sino que también facilitará el intercambio de conocimientos técnicos y tecnologías avanzadas.
                                <Br></Br>
                                Este enfoque le permitirá a Colombia acelerar su desarrollo nuclear, asegurando al mismo tiempo que se adhiera a las normativas internacionales más estrictas en materia de seguridad y protección radiológica. El aprovechamiento de estas colaboraciones internacionales será fundamental para superar los desafíos técnicos, regulatorios, y para construir un programa nuclear sostenible y responsable.
                                <Br></Br>
                                En el contexto de la reciente Subasta de Cargo por Confiabilidad para 2027/2028, Colombia ha demostrado un compromiso con la transición energética, asignando una gran proporción de la nueva generación de energía a fuentes solares. Sin embargo, esta transición ha revelado la necesidad de energía firme para asegurar la disponibilidad constante y confiable de energía, especialmente durante los picos de consumo nocturnos, un desafío que la generación solar no puede enfrentar sola.
                                <Br></Br>
                                La transición energética ha llevado a incluir plantas solares y eólicas que, aunque son sostenibles, no ofrecen el mismo nivel de energía firme que las plantas hidroeléctricas o térmicas. Ante esta realidad, es importante analizar el balance de energía firme a largo plazo, subrayando la necesidad de tener una fuente de energía confiable para cubrir la demanda máxima nocturna.
                                <Br></Br>
                                El Documento Conpes 4075 de 2022 destaca que el Ministerio de Minas y Energía, junto con la Unidad de Planeación Minero Energética (UPME), evaluará el potencial de la energía nuclear en la transformación energética del país. Este análisis, programado para desarrollarse entre 2023 y 2025, podría resultar en la inclusión de la energía nuclear como una opción viable en la política energética nacional.
                                <Br></Br>
                                El Plan Energético Nacional 2022-2052 ha considerado la energía nuclear en varios escenarios de demanda que reflejan la visión de los planificadores del país sobre esta tecnología como una opción real y factible. Para apoyar el avance hacia la energía nuclear, se espera presentar la Ley Nuclear y de Protección Radiológica en el Congreso de la República para organizar institucionalmente el sector nuclear en Colombia.
                                <Br></Br>
                                El país cuenta con experiencia en tecnología nuclear, evidenciada por el reactor operativo en Bogotá desde 1965, el cual ha funcionado sin incidentes. Esta experiencia demuestra una sólida base de conocimientos y un precedente de manejo seguro de la tecnología nuclear.
                                <Br></Br>
                                El marco regulatorio existente –que incluye el Decreto 0381 de 2012, que le asigna al Ministerio de Minas y Energía la competencia para adoptar políticas nacionales en materia de energía nuclear y materiales radiactivos, y la Resolución 18-1434 de 2002, que adopta el Reglamento de Protección y Seguridad Radiológica– establece un entorno normativo sólido para el uso seguro de materiales radiactivos y nucleares en Colombia.
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

