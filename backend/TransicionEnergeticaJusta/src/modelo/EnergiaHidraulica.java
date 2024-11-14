package modelo;

public class EnergiaHidraulica extends EnergiaRenovable{
    
    private double volumenAgua;
    
    public EnergiaHidraulica(String tipo, String pais, String year, double produccion, double consumo, double volumenAgua){
     super(tipo, pais, year, produccion, consumo);
     this.volumenAgua = volumenAgua;
    }
    
    //Metodo set y get
    
    public double getVolumenAgua(){
        return volumenAgua;
    }
    
    public void setVolumenAgua(double volumenAgua){
        if (volumenAgua > 0) {
            this.volumenAgua = volumenAgua;
        }
        else{
            System.out.println("El volumen de agua tiene que tener un valor mayor que cero");
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
                            + "\nLa fecha de consumo es: " + super.getYear() + "\nLa produccion es: " + super.getProduccion() + "Kw"
                            + "\nEl consumo es: " + getConsumo() + "Kw" + "\nEl consumo total fue: " + ConsumoTotal + "Kw" 
                            + "\nEl volumen de agua es: " + volumenAgua + " metros cubicos" + "\n");
     }
}
