package transicionenergeticajusta;

import modelo.EnergiaNuclear;
import modelo.EnergiaHidraulica;
import modelo.EnergiaSolar;
import modelo.EnergiaEolica;
import modelo.EnergiaRenovable;
import java.util.ArrayList;
import java.util.List;

public class TransicionEnergeticaJusta {

    public static void main(String[] args) {

        List<EnergiaRenovable> TipoEnergias = new ArrayList<>();
        TipoEnergias.add(new EnergiaHidraulica("Hidraulica", "Alemania", "1996", 500, 250, 100));
        TipoEnergias.add(new EnergiaEolica("Eolica", "Holanda", "2004", 800, 400, 25));
        TipoEnergias.add(new EnergiaSolar("Solar", "Colombia", "2012", 1500, 900, 1000));
        TipoEnergias.add(new EnergiaNuclear("Nuclear", "Ucrania", "2020", 3000, 1800, 50));

        for (EnergiaRenovable tipoEnergia : TipoEnergias) {
            tipoEnergia.CalculoEnergia();
            tipoEnergia.MostrarInformacion();
        }

        /*
        EnergiaHidraulica energiaHidraulica1 = new EnergiaHidraulica("Hidraulica", "Alemania", "1996", 500, 250, 100);
        EnergiaEolica energiaEolica1 = new EnergiaEolica("Eolica", "Holanda", "2004", 800, 400, 25);
        EnergiaSolar energiaSolar1 = new EnergiaSolar("Solar", "Colombia", "2012", 1500, 900, 1000);
        EnergiaNuclear energiaNuclear1 = new EnergiaNuclear("Nuclear", "Ucrania", "2020", 3000, 1800, 50);

        energiaHidraulica1.CalculoEnergia();
        energiaHidraulica1.MostrarInformacion();

        energiaEolica1.CalculoEnergia();
        energiaEolica1.MostrarInformacion();

        energiaSolar1.CalculoEnergia();
        energiaSolar1.MostrarInformacion();

        energiaNuclear1.CalculoEnergia();
        energiaNuclear1.MostrarInformacion();
         */
    }
}
