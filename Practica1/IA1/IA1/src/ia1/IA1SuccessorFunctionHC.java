/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ia1;

import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author andreu
 */
public class IA1SuccessorFunctionHC implements SuccessorFunction {
    
    @Override
    public List getSuccessors(Object o) {
        ArrayList<Successor> successors = new ArrayList<>();
        IA1Estat state = (IA1Estat) o;
        int totalCli = state.getCliSize();
        int totalCen = state.getCenSize();
        
        // operador switch
        /*
        for (int cli = 0; cli < totalCli; cli++) {
            int firstCen = -1;
            int assig = state.getAssigCli(cli);
            for (int cen = firstCen; cen < totalCen; ++cen) {
                if (cen != assig) {
                    IA1Estat newState = state.clone();
                    try {
                        newState.opSwitch(cli, cen);
                    } catch (Exception ex) {
                        Logger.getLogger(IA1SuccessorFunctionHC.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    if (newState.es_final()) {
                        successors.add(new Successor("Switch client " + cli + " central " + cen, newState));
                    }
                }
            }
        }

*/
        
        // operador swap
        
        int indexlimit = 1;
        for (int cli1 = 0; cli1 < totalCli - 1; cli1++) {
            for (int cli2 = indexlimit; cli2 < totalCli; cli2++) {
                int assig1 = state.getAssigCli(cli1);
                int assig2 = state.getAssigCli(cli2);
                if (assig1 != assig2) {
                    try {
                        IA1Estat newState = state.clone();
                        newState.opSwap(cli1, cli2);
                        if (newState.es_final()) {
                            successors.add(new Successor("Swap client " + cli1 + " client " + cli2, newState));                        
                        }
                    } catch (Exception ex) {
                        Logger.getLogger(IA1SuccessorFunctionHC.class.getName()).log(Level.SEVERE, null, ex);
                    }
                }
            }
            indexlimit++;
        }


        
        return successors;
    }
        
}