package modelo;

public class EnergiaRenovable {

    // Atributos de la clase padre   
    private String tipo;
    private String pais;
    private String year;
    private double produccion;
    private double consumo;
    double ConsumoTotal;

    //Constructor de la clase padre
    public EnergiaRenovable(String tipo, String pais, String year, double produccion, double consumo) {
        this.tipo = tipo;
        this.pais = pais;
        this.year = year;
        this.produccion = produccion;
        this.consumo = consumo;
    }

    //Métodos set y get
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public double getProduccion() {
        return produccion;
    }

    public void setProduccion(double produccion) {
        this.produccion = produccion;
    }

    public double getConsumo() {
        return consumo;
    }

    public void setConsumo(double consumo) {
        this.consumo = consumo;
    }

    //Método de consumo 
    public void CalculoEnergia() {
        ConsumoTotal = produccion - consumo;
    }

    //Método Mostrar información
    public void MostrarInformacion() {
        System.out.println("El tipo de energia es: " + tipo + "\nEl pais de consumo es: " + pais
                + "\nLa fecha de consumo es: " + year + "\nLa produccion es: " + produccion  + "Kw"
                + "\nEl consumo es: " + consumo  + "Kw" + "\nEl consumo total fue: " + ConsumoTotal + "Kw");
    }
}
