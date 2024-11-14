package modelo;

public class EnergiaSolar extends EnergiaRenovable {

    private int cantidadPaneles;

    public EnergiaSolar(String tipo, String pais, String year, double produccion, double consumo, int cantidadPaneles) {
        super(tipo, pais, year, produccion, consumo);
        this.cantidadPaneles = cantidadPaneles;
    }

    public double getCantidadPaneles() {
        return cantidadPaneles;
    }

    public void setCantidadPaneles(int cantidadPaneles) {
        if (cantidadPaneles > 0) {
            this.cantidadPaneles = cantidadPaneles;
        } else {
            System.out.println("La cantidad de paneles solares debe ser un valor mayor que cero");
        }
    }

    //Método de consumo 
    
    public void CalculoEnergia() {
        ConsumoTotal = super.getProduccion() - super.getConsumo();
    }

    //Método Mostrar información
    @Override
    public void MostrarInformacion() {
        System.out.println("El tipo de energia es: " + super.getTipo() + "\nEl pais de consumo es: " + super.getPais()
                + "\nLa fecha de consumo es: " + super.getYear() + "\nLa produccion es: " + super.getProduccion()  + "Kw"
                + "\nEl consumo es: " + getConsumo() + "Kw" + "\nEl consumo total fue: " + ConsumoTotal + "Kw" 
                + "\nLa cantidad de paneles son: " + cantidadPaneles + "\n");
    }
}
