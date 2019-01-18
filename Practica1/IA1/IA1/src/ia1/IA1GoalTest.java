package ia1;
import aima.search.framework.GoalTest;


/**
 * @author Arnau Beramendi, Adrià Espejo, Andreu Esteras
 */
public class IA1GoalTest implements GoalTest {
    
    /**
     * Retorna cert si estat és un estat final
     * @param estat és l'estat a verificar
     * @return cert si és un estat final
     */
    @Override
    public boolean isGoalState(Object estat) {
        return false;
    }
}