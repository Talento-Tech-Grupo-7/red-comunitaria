package com.transicionenergeticajusta;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.data.category.DefaultCategoryDataset;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.awt.*;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author halecatez
 */
@WebServlet("/graficoBarrasDB")
public class GraficoBarrasDBServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/transicionEnergetica";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DefaultCategoryDataset dataset = new DefaultCategoryDataset();

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT r.nombre region, er.produccion FROM energiaRenovable er "
                     + " LEFT JOIN region r ON er.regionId = r.id;")){
            while (resultSet.next()) {
                String region = resultSet.getString("region");
                float produccion = resultSet.getFloat("produccion");
                dataset.addValue(produccion, "Produccion", region);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        JFreeChart chart = ChartFactory.createBarChart(
            "Producción por Región",
            "Regiones",
            "Producción",
            dataset
        );

        CategoryPlot plot = chart.getCategoryPlot();
        plot.setRangeGridlinePaint(Color.BLACK);

        response.setContentType("image/png");
        OutputStream out = response.getOutputStream();
        org.jfree.chart.ChartUtils.writeChartAsPNG(out, chart, 800, 600);
        out.close();
    }
}
