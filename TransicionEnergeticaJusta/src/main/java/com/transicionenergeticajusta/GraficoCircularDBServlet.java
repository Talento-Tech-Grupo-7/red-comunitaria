package com.transicionenergeticajusta;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
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
import org.jfree.data.general.DefaultPieDataset;

/**
 *
 * @author halecatez
 */
@WebServlet("/graficoCircularDB")
public class GraficoCircularDBServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/transicionEnergetica";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "your_password";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DefaultPieDataset dataset = new DefaultPieDataset();

        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT anio, consumo FROM energiaRenovable")){
            while (resultSet.next()) {
                String anio = resultSet.getString("anio");
                float consumo = resultSet.getFloat("consumo");
                dataset.setValue(anio, consumo);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        JFreeChart chart = ChartFactory.createPieChart(
            "Distribución de Consumo por Año",
            dataset, 
            true, 
            true,
            false
        );

        chart.setBackgroundPaint(Color.WHITE);

        response.setContentType("image/png");
        OutputStream out = response.getOutputStream();
        org.jfree.chart.ChartUtils.writeChartAsPNG(out, chart, 800, 600);
        out.close();
    }
}
