/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ia1;
import IA.Energia.Centrales;
import java.util.Scanner;
import IA.Energia.Clientes;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class Main {

    public static void main(String[] args) throws Exception{
        
        int n;
        try (Scanner reader = new Scanner(System.in) // Reading from System.in
        ) {
            System.out.println("1: HC, 2: SA: ");
            n = reader.nextInt();
        }
        
        
        int[] vcent = new int[3];
        vcent[0] = 5;
        vcent[1] = 10;
        vcent[2] = 25;
        double[] propc = new double[3];
        propc[0] = 0.25;
        propc[1] = 0.30;
        propc[2] = 0.45;
        Centrales centrales = new Centrales(vcent, 1234);
        Clientes clientes = new Clientes(1000, propc, 0.75, 1234);
        
        long startTime = System.currentTimeMillis();
        
        IA1Estat state = new IA1Estat(centrales, clientes, 4); //solució inicial
        IA1Estat estat_final;
        
        if (n == 1) {
        
        //HILL CLIMBING
     

        Problem p = new  Problem(state,
                                new IA1SuccessorFunctionHC(),
                                new IA1GoalTest(),
                                new IA1HeuristicFunction()); //Creem l'objecte Problem

        Search alg = new HillClimbingSearch(); //instanciem l'algorisme HC

        SearchAgent agent = new SearchAgent(p, alg); //instanciem l'agent buscador

   
        System.out.println();
        printActions(agent.getActions());
        printInstrumentation(agent.getInstrumentation()); //printem resultats de cerca
        System.out.println();

        //amb getGoalState de Search podem accedir a l'estat final
        
        estat_final = (IA1Estat) alg.getGoalState();
        
        System.out.println("El benefici final és: " + Double.toString(estat_final.getBenefici()));
       
        
        }
        
        

        else {
        
        //SIMULATED ANNEALING
        
        int steps = 0, stiter = 0, k = 0; double lamb = 0;
        
        Problem p = new  Problem(state,
                    new IA1SuccessorFunctionSA(),
                    new IA1GoalTest(),
                    new IA1HeuristicFunction()); //Creem l'objecte Problem

        Search alg; //instanciem l'algorisme SA
        alg = new SimulatedAnnealingSearch(steps, stiter, k, lamb);

        SearchAgent agent = new SearchAgent(p, alg); //instanciem l'agent buscador

        System.out.println();
        //printActions(agent.getActions());
        printInstrumentation(agent.getInstrumentation()); //printem resultats de cerca
        System.out.println();

        //amb getGoalState de Search podem accedir a l'estat final
        
        estat_final = (IA1Estat) alg.getGoalState();
        
        System.out.println("El benefici final és: " + Double.toString(estat_final.getBenefici()));
        }

       /////////////////////////////////////////////////////////////////////
       long stopTime = System.currentTimeMillis();
      long elapsedTime = stopTime - startTime;
      System.out.println(elapsedTime + "ms");
        
       int nassignats = 0;
       System.out.println("El benefici inicial és de : " + state.getBenefici());
       for (int i = 0; i < estat_final.getAssignacions().length; ++i) {
           
           if (estat_final.getAssignacions()[i] != -1) nassignats++;
       }
       
       System.out.println(nassignats);

    }

        private static void printInstrumentation(Properties properties) {
        Iterator keys = properties.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String) keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }
        
    }
    
    private static void printActions(List actions) {
        for (int i = 0; i < actions.size(); i++) {
            String action = (String) actions.get(i);
            System.out.println(action);
        }
    }
    
    
    
}