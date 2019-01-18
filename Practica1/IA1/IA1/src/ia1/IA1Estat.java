package ia1;
import IA.Energia.Centrales;
import IA.Energia.Clientes;
import IA.Energia.Cliente;
import IA.Energia.Central;
import IA.Energia.VEnergia;


/**
 * @author Arnau Beramendi, Adrià Espejo, Andreu Esteras
 */
public class IA1Estat {
    private int[] assignacions;
    private double[] produccioRestant;
    private double benefici;
    static Centrales c;
    static Clientes cl;
    
    
    /**
     * Constructora que genera una solució inicial seguint el mètode triat
     * @param c Centrals
     * @param cl Clients
     * @param creationMethod mètode de generació de la solució inicial
     * @throws java.lang.Exception
     */
    public IA1Estat(Centrales c, Clientes cl, int creationMethod) throws Exception {
        IA1Estat.c = c;
        IA1Estat.cl = cl;
        assignacions = new int[cl.size()];
        produccioRestant = new double[c.size()];
        inicialitza_produccio_Restant();
        benefici = 0;
        initBenefici();
        
        generacio_estat_inicial(creationMethod, Cliente.GARANTIZADO);
        generacio_estat_inicial(creationMethod, Cliente.NOGARANTIZADO);
    }
    
    
    /**
     * Constructora que genera una solució agafant els paràmetres que se li passa
     * @param assignacions client-central
     * @param produccioRestant de cada central
     * @param benefici amb l'assignació actual
     */
    public IA1Estat(int[] assignacions, double[] produccioRestant, double benefici) {
        this.assignacions = new int[assignacions.length];
        this.produccioRestant = new double[produccioRestant.length];
        System.arraycopy(assignacions, 0, this.assignacions, 0, assignacions.length);
        System.arraycopy(produccioRestant, 0, this.produccioRestant, 0, produccioRestant.length);
        this.benefici = benefici;
    }
    
    
    /**
     * Mira si una assignació és una solució
     * @return true si l'assignació és solució
     */
    public boolean es_final() {
        for (int i = 0; i < assignacions.length; ++i) {
            if (cl.get(i).getContrato() == Cliente.GARANTIZADO && assignacions[i] == -1) return false;
            if (assignacions[i] != -1) {
                if (produccioRestant[assignacions[i]] > c.get(assignacions[i]).getProduccion()) return false;
                if (produccioRestant[assignacions[i]] < 0) return false;
            }
        }
        return true;
    }
 
    
    /**
     * Heurístic que retorna el benefici que obtenim amb l'assignació actual
     * @return benefici que obtenim amb les assignacions actuals
     */
    public double heuristic() {
        return -benefici;
    }
    
    
    /**
     * Clona la instància de IA1Estat
     * @return nova instància clonada
     */
    public IA1Estat clone() {
        return new IA1Estat(this.assignacions, this.produccioRestant, this.benefici);
    }
    
    
    /** %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% FUNCIONS AUXILIARS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% **/
    /**
     * Inicialitza produccioRestant amb la producció de cada central
     * @param c Centrals
     */
    private void inicialitza_produccio_Restant() {
        for (int i = 0; i < c.size(); ++i) {
            produccioRestant[i] = c.get(i).getProduccion();
        }
    }
    
    
    /**
     * Inicialitza el benefici per defecte de les centrals aturades
     */
    private void initBenefici() throws Exception {
        for (int i = 0; i < c.size(); ++i) {
            benefici += -(VEnergia.getCosteParada(c.get(i).getTipo()));
        }
    }
    
    
    /**
     * Genera la solució inicial amb el mètode que s'indiqui i pels clients de la prioritat indicada
     * @param creationMethod mètode de generació de la solució inicial
     * @param contrato prioritat dels clients que es tractarà
     */
    private void generacio_estat_inicial(int creationMethod, int contrato) throws Exception {
        if (creationMethod == 1) {
            for (int i = 0; i < cl.size(); ++i) {
                Cliente client = cl.get(i);
                if (client.getContrato() == contrato) {
                    Central optima = null;
                    double dist = -1;
                    int index = -1;
                    for (int j = 0; j < c.size(); ++j) {
                        Central central = c.get(j);
                        if (dins_rang_produccio(central, client, j)) {
                            if (optima == null) {
                                index = j;
                                optima = central;
                                dist = distancia(client.getCoordX(), client.getCoordY(),central.getCoordX(), central.getCoordY());
                            }
                            else {
                                if (distancia(client.getCoordX(), client.getCoordY(),central.getCoordX(), central.getCoordY()) < dist) {
                                    index = j;
                                    optima = central;
                                    dist = distancia(client.getCoordX(), client.getCoordY(),central.getCoordX(), central.getCoordY());
                                }
                            }
                        }
                    }
                    assignar(optima, client, index);
                    assignacions[i] = index;
                }
            }
        }
        
        else if (creationMethod == 2) {
            for (int i = 0; i < cl.size(); ++i) {
                Cliente client = cl.get(i);
                if (client.getContrato() == contrato) {
                    Central optima = null;
                    boolean trobat = false;
                    int index = -1;
                    for (int j = 0; j < c.size() && !trobat; ++j) {
                        Central central = c.get(j);
                        if (dins_rang_produccio(central, client, j)) {
                            trobat = true;
                            index = j;
                            optima = central;
                        }
                    }
                    assignar(optima, client, index);
                    assignacions[i] = index;
                }
            }
        }
        
        else if (creationMethod == 3 && contrato == Cliente.GARANTIZADO) {
            for (int i = 0; i < cl.size(); ++i) {
                Cliente client = cl.get(i);
                if (client.getContrato() == contrato) {
                    Central optima = null;
                    int index = -1;
                    for (int j = 0; j < c.size(); ++j) {
                        Central central = c.get(j);
                        if (dins_rang_produccio(central, client, j)) {
                            index = j;
                            optima = central;
                            break;
                        }
                    }
                    assignar(optima, client, index);
                    assignacions[i] = index;
                }
                else {
                    assignar(null, client, -1);
                    assignacions[i] = -1;
                }
            }
        }
        
        else if (creationMethod == 4) {
            for (int i = 0; i < cl.size(); ++i) {
                Cliente client = cl.get(i);
                if (client.getContrato() == contrato) {
                    Central optima = null;
                    int index = -1;
                    double maximaProduccio = 0;
                    for (int j = 0; j < c.size(); ++j) {
                        Central central = c.get(j);
                        if (dins_rang_produccio(central, client, j) && produccioRestant[j] > maximaProduccio) {
                            if (optima == null) {
                                index = j;
                                optima = central;
                                maximaProduccio = produccioRestant[j];
                            }
                            else {    
                                index = j;
                                optima = central;
                                maximaProduccio = produccioRestant[j];
                            }
                        }
                    }
                    assignar(optima, client, index);
                    assignacions[i] = index;
                }
            }
        }
    }
    
    
    /**
     * Mira si una Central central d'índex j pot abastir al Client client
     * @param central Central
     * @param client Client
     * @param j índex de la central c
     * @return true si c pot abastir a cl
     */
    private boolean dins_rang_produccio(Central central, Cliente client, int j) {
        double dist = distancia(client.getCoordX(), client.getCoordY(), central.getCoordX(), central.getCoordY());
        return (client.getConsumo()+(client.getConsumo()*VEnergia.getPerdida(dist))) < produccioRestant[j];
    }
    
    
    /**
     * Calcula la distància euclidia entre el punt (x1, y1) i (x2, y2)
     * @param x1 Coordenada x del Client
     * @param y1 Coordenada y del Client
     * @param x2 Coordenada x de la Central
     * @param y2 Coordenada y de la Central
     * @return distància euclidia entre Central i Client
     */
    private double distancia(int x1, int y1, int x2, int y2) {
        return Math.sqrt(Math.pow(x1-x2, 2)+Math.pow(y1-y2,2));
    }
    
    
    /**
     *  Resta a la central d'índex j la producció abastida al client (es considera que la central pot abastir al client)
     * @param central Central
     * @param client Client
     * @param j índex de la central c
     */
    private void assignar(Central central, Cliente client, int j) throws Exception {
        if (j >= 0) {
            double dist = distancia(client.getCoordX(), client.getCoordY(), central.getCoordX(), central.getCoordY());
            boolean primera_assignacio = (produccioRestant[j] == c.get(j).getProduccion());
            produccioRestant[j] -= (client.getConsumo() + (client.getConsumo()*VEnergia.getPerdida(dist)));

            this.benefici += calculaCost(central, primera_assignacio);
            this.benefici += calculaIngressos(client);
        }
        else {
            this.benefici -= VEnergia.getTarifaClientePenalizacion(client.getTipo())*client.getConsumo();
        }
    }
    
    
    /**
    * Calcula els costos de cada assignació
    * @param central Central
    * @param client Client
    * @param percentatge % afegit a la producció
    */
    private double calculaCost(Central central, boolean primera_assignacio) throws Exception {
        if (primera_assignacio) {
            return VEnergia.getCosteParada(central.getTipo()) - (VEnergia.getCosteProduccionMW(central.getTipo()) + VEnergia.getCosteMarcha(central.getTipo()));
        }
        return 0;
    }
    
    
    /**
    * Calcula els ingressos de cada assignació
    * @param client Client
    */
    private double calculaIngressos(Cliente client) throws Exception {
        if (client.getContrato() == Cliente.GARANTIZADO) return VEnergia.getTarifaClienteGarantizada(client.getTipo()) * client.getConsumo();
        else return VEnergia.getTarifaClienteNoGarantizada(client.getTipo()) * client.getConsumo();
    }
    
    
    /**
     * Retorna la producció necessària per abastir al Client client des de la Central central
     * @return producció necessària
     */
    private double produccio_necessaria(Cliente client, Central central) {
        double dist = distancia(client.getCoordX(), client.getCoordY(), central.getCoordX(), central.getCoordY());
        return (client.getConsumo()+(client.getConsumo()*VEnergia.getPerdida(dist)));
    }
    
    
    /**
     * Actualitza el benefici a l'aplicar l'operador switch
     * @param icli índex del client que s'assigna
     * @param from índex de la central on estava assignat el client icli
     * @param to índex de la central on passarà a estar assignat el client icli
     * @throws Exception 
     */
    private void actualitzaBeneficiSwitch(int icli, int from, int to) throws Exception {
        // TODO utilitzar calcularCost i calculaIngressos (?)
        Cliente cli = cl.get(icli);
        double dist;
        if (from == -1) {
            dist = distancia(cli.getCoordX(), cli.getCoordY(), c.get(to).getCoordX(), c.get(to).getCoordY());
            if (cli.getContrato() == Cliente.GARANTIZADO) benefici += VEnergia.getTarifaClienteGarantizada(cli.getTipo()) * cli.getConsumo();
            else benefici += (VEnergia.getTarifaClienteNoGarantizada(cli.getTipo()) * cli.getConsumo());
            if (produccioRestant[to] == c.get(to).getProduccion()) benefici += VEnergia.getCosteParada(c.get(to).getTipo()) - (VEnergia.getCosteProduccionMW(c.get(to).getTipo()) + VEnergia.getCosteMarcha(c.get(to).getTipo()));
            benefici += VEnergia.getTarifaClientePenalizacion(cli.getTipo());
            produccioRestant[to] -= (cli.getConsumo() + cli.getConsumo()*VEnergia.getPerdida(dist));
        }
        
        else if (to == -1) {
            dist = distancia(cli.getCoordX(), cli.getCoordY(), c.get(from).getCoordX(), c.get(from).getCoordY());
            produccioRestant[from] += (cli.getConsumo() + cli.getConsumo()*VEnergia.getPerdida(dist));
            if (cli.getContrato() == Cliente.GARANTIZADO) benefici -= VEnergia.getTarifaClienteGarantizada(cli.getTipo()) * cli.getConsumo();
            else benefici -= VEnergia.getTarifaClienteNoGarantizada(cli.getTipo()) * cli.getConsumo();
            benefici -= VEnergia.getTarifaClientePenalizacion(cli.getTipo());
            if (produccioRestant[from] == c.get(from).getProduccion()) benefici += (VEnergia.getCosteProduccionMW(c.get(from).getTipo()) + VEnergia.getCosteMarcha(c.get(from).getTipo())) - VEnergia.getCosteParada(c.get(from).getTipo());
        } 
        
        else {
            dist = distancia(cli.getCoordX(), cli.getCoordY(), c.get(from).getCoordX(), c.get(from).getCoordY());
            produccioRestant[from] += (cli.getConsumo() + cli.getConsumo()*VEnergia.getPerdida(dist));
            if (produccioRestant[from] == c.get(from).getProduccion()) benefici += (VEnergia.getCosteProduccionMW(c.get(from).getTipo()) + VEnergia.getCosteMarcha(c.get(from).getTipo())) - VEnergia.getCosteParada(c.get(from).getTipo());
            if (produccioRestant[to] == c.get(to).getProduccion()) benefici += VEnergia.getCosteParada(c.get(to).getTipo()) - (VEnergia.getCosteProduccionMW(c.get(to).getTipo()) + VEnergia.getCosteMarcha(c.get(to).getTipo()));
            dist = distancia(cli.getCoordX(), cli.getCoordY(), c.get(to).getCoordX(), c.get(to).getCoordY());
            produccioRestant[to] -= (cli.getConsumo() + cli.getConsumo()*VEnergia.getPerdida(dist));
        }   
    }
    
    
    /**
     * Actualitza el benefici a l'aplicar l'operador swap
     * @param icli1 índex del client 1 a intercanviar
     * @param icli2 índex del client 2 a intercanviar
     * @param assig1 central a la que estava assignat originàriament icli1
     * @param assig2 central a la que estava assignat originàriament icli2
     * @throws Exception 
     */
    private void actualitzaBeneficiSwap(int icli1, int icli2, int assig1, int assig2) throws Exception {
       Cliente cli1 = cl.get(icli1);
       Cliente cli2 = cl.get(icli2);
       actualitzaBeneficiSwitch(icli1, assig1, assig2);
       actualitzaBeneficiSwitch(icli2, assig2, assig1);
    }
    
    
    /**
     * Operador que mou un client a una central concreta
     * @param cli índex del client a moure
     * @param to índex de la central a on es mou
     * @throws Exception 
     */
    public void opSwitch(int cli, int to) throws Exception {
        int from = this.assignacions[cli];
        this.assignacions[cli] = to;
        actualitzaBeneficiSwitch(cli, from, to);
    }
    
    
    /**
     * Operador que intercanvia les assignacions entre dos clients
     * @param cli1 índex del client 1 a intercanviar
     * @param cli2 índex del client 2 a intercanviar
     * @throws Exception 
     */
    public void opSwap(int cli1, int cli2) throws Exception {
        int assig1 = this.assignacions[cli1];
        int assig2 = this.assignacions[cli2];
        this.assignacions[cli1] = assig2;
        this.assignacions[cli2] = assig1;
        actualitzaBeneficiSwap(cli1, cli2, assig1, assig2);
    }
    
    
    /**
     * Getter mida de assignacions
     * @return mida assignacions
     */
    public int getCliSize() { 
        return this.assignacions.length; 
    }
    
    
    /**
     * Getter mida de la llista de centrals
     * @return mida llista centrals
     */
    public int getCenSize() { 
        return this.c.size(); 
    }
    
    
    /**
     * Getter central assignada a un client
     * @param cli índex del client
     * @return central assignada al client cli
     */
    public int getAssigCli(int cli) { 
        return this.assignacions[cli]; 
    }
    
    
    /**
     * Getter benefici de l'assignació actual
     * @return benefici assignació actual
     */
    public double getBenefici() {
        return benefici;
    }
    
    
    /**
     * Getter assignacions actuals
     * @return assignacions actuals
     */
    public int[] getAssignacions() {
        return assignacions;
    }
    
    
    /**
     * Getter producció restant
     * @return producció restant
     */
    public double[] getProduccioRestant() {
        return produccioRestant;
    }
    
}