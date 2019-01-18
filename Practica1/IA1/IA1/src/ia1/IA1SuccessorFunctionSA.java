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
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author andreu
 */
public class IA1SuccessorFunctionSA implements SuccessorFunction {
    public static final int SWITCH = 0;
    public static final int SWAP = 1;
    
    @Override
    public List getSuccessors(Object o) {
        ArrayList<Successor> successors = new ArrayList<>();
        IA1Estat state = (IA1Estat) o;
        int totalCli = state.getCliSize();
        int totalCen = state.getCenSize();
        
        boolean isFinal = false;
        
        while (!isFinal) {

            // int op = random(SWITCH, SWAP);
            
            /*
            if (op == SWITCH) {
                int cli = random(0, totalCli);
                int assig = state.getAssigCli(cli);
                int firstCen = -1;
                int cen = random(firstCen, totalCen);
                if (cen != assig) {
                    IA1Estat newState = state.clone();
                    try {
                        newState.opSwitch(cli, cen);
                    } catch (Exception ex) {
                        Logger.getLogger(IA1SuccessorFunctionSA.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    isFinal = newState.es_final();
                    if (isFinal) {
                        successors.add(new Successor("Switch client " + cli + " central " + cen, newState));
                        System.out.println("Switch client " + cli + " central " + cen);
                        System.out.println(newState.getBenefici());
                    }
                }
            } else if (op == SWAP) {
            */   
                int cli1 = random(0, totalCli);
                int cli2 = random(0, totalCli);
                int assig1 = state.getAssigCli(cli1);
                int assig2 = state.getAssigCli(cli2);
                if (assig1 != assig2) {
                    IA1Estat newState = state.clone();
                    try {
                        newState.opSwap(cli1, cli2);
                    } catch (Exception ex) {
                        Logger.getLogger(IA1SuccessorFunctionSA.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    isFinal = newState.es_final();
                    if (isFinal) {
                        successors.add(new Successor("Swap client " + cli1 + " client " + cli2, newState));
                        System.out.println("Swap client " + cli1 + " client " + cli2);
                        System.out.println(newState.getBenefici());
                    }
                }
            // }
        
        }
        
        return successors;
    }
    
    public int random(int min, int max) {
        return new Random().nextInt(max - min) + min;
    }
    
}
