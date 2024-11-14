package modelo;

public class EnergiaNuclear extends EnergiaRenovable {

    private int cantidadPlantasNucleares;

    public EnergiaNuclear(String tipo, String pais, String year, double produccion, double consumo, int cantidadPlantasNucleares) {
        super(tipo, pais, year, produccion, consumo);
        this.cantidadPlantasNucleares = cantidadPlantasNucleares;
    }

    public double getCantidadPlantasNucleares() {
        return cantidadPlantasNucleares;
    }

    public void setCantidadPlantasNucleares(int cantidadPlantasNucleares) {
        if (cantidadPlantasNucleares > 0) {
            this.cantidadPlantasNucleares = cantidadPlantasNucleares;
        } else {
            System.out.println("La cantidad de plantas nucleares debe ser un valor mayor que cero");
        }
    }

    //Método de consumo 
    @Override
    public void CalculoEnergia() {
        ConsumoTotal = super.getProduccion() - super.getConsumo();
    }

    //Método Mostrar información
    @Override
    public void MostrarInformacion() {
        System.out.println("El tipo de energia es: " + super.getTipo() + "\nEl pais de consumo es: " + super.getPais()
                + "\nLa fecha de consumo es: " + super.getYear() + "\nLa produccion es: " + super.getProduccion() + "Kw"
                + "\nEl consumo es: " + getConsumo() + "Kw" + "\nEl consumo total fue: " + ConsumoTotal + "Kw" 
                + "\nLa cantidad de plantas nucleares son: " + cantidadPlantasNucleares + "\n");
    }
}
