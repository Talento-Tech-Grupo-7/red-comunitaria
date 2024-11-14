package modelo;

public class EnergiaEolica extends EnergiaRenovable{
    
    private int cantidadElices;
    
    public EnergiaEolica(String tipo, String pais, String year, double produccion, double consumo, int cantidadElices){
     super(tipo, pais, year, produccion, consumo);
     this.cantidadElices = cantidadElices;
    }
    
     public double getCantidadElices(){
        return cantidadElices;
    }
    
    public void setCantidadElices(int cantidadElices){
        if (cantidadElices > 0) {
            this.cantidadElices = cantidadElices;
        }
        else{
            System.out.println("La cantidad de elices debe ser un valor mayor que cero");
        }
    }
    
    //Método de consumo 
    @Override
     public void CalculoEnergia(){
        ConsumoTotal = super.getProduccion() - super.getConsumo();
     }
     
      //Método Mostrar información
     @Override
     public void MostrarInformacion(){
         System.out.println("El tipo de energia es: " + super.getTipo() + "\nEl pais de consumo es: " + super.getPais()
                            + "\nLa fecha de consumo es: " + super.getYear() + "\nLa produccion es: " + super.getProduccion()  + "Kw"
                            + "\nEl consumo es: " + getConsumo() + "Kw" + "\nEl consumo total fue: " + ConsumoTotal + "Kw"
                            + "\nLa cantidad de elices son: " + cantidadElices + "\n");
     }
}
