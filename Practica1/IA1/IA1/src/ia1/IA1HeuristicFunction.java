package ia1;
import aima.search.framework.HeuristicFunction;

/**
 *
 * @author Arnau Beramendi, Adrià Espejo, Andreu Esteras
 */
public class IA1HeuristicFunction implements HeuristicFunction {
    @Override
    public double getHeuristicValue(Object estat) {
        return ((IA1Estat) estat).heuristic();
    }
}
