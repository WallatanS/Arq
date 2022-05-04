package sintático;

import java.util.ArrayList;
import java.util.Scanner;

/**
 * @author Lucio Lisboa
 */

public class Lista {
    public static ArrayList Criar(){
        Scanner scan = new Scanner(System.in);
        ArrayList<String> lista = new ArrayList();
        lista.add("se");
        lista.add("[");
        lista.add("num");
        lista.add("maior");
        lista.add("id");
        lista.add("]");
        lista.add("entao");
        lista.add("[");
        lista.add("id");
        lista.add("=");
        lista.add("num");
        lista.add(";");
        lista.add("]");
        lista.add("$");
        return lista;
    }
}