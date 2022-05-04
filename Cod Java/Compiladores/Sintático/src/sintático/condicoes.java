package sintático;

import java.util.ArrayList;

/**
 * @author Lucio Lisboa
 */

public class condicoes {
    public static void inicio(){
        Pilha pilha = new Pilha();
        pilha.iniciar();
        int posLista = 0;
        String item;
        ArrayList lista = Lista.Criar();
        int tam = lista.size();
        do{
            item = pilha.desempilhar();
            if(item.equals("$"))
                CondFinal(lista, posLista, pilha);
            else if(item.equals("<cod>")){
                CondCod(lista, posLista, pilha);
            }
            else if(item.equals("<C>")){
                CondC(lista, posLista, pilha);
            }
            else if(item.equals("<SE>")){
                CondSE(lista, posLista, pilha);
            }
            else if(item.equals("<SENAO>")){
                CondSENAO(lista, posLista, pilha);
            }
            else if(item.equals("<ENQUANTO>")){
                CondENQUANTO(lista, posLista, pilha);
            }
            else if(item.equals("<ESCREVA>")){
                CondESCREVA(lista, posLista, pilha);
            }
            else if(item.equals("<VARIAVEL>")){
                CondVARIAVEL(lista, posLista, pilha);
            }
            else if(item.equals("<TIPO>")){
                CondTIPO(lista, posLista, pilha);
            }
        }while(posLista < tam);
    }
    
    public static void CondFinal(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("$")){
            
        }
    }
    
    public static void CondCod(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("$")){
        }
        else if(lista.get(pos).equals("]")){
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<cod>");
            pilha.empilhar("<C>");
        }
        else if(lista.get(pos).equals("se")){
            pilha.empilhar("<cod>");
            pilha.empilhar("<C>");
        }
        else if(lista.get(pos).equals("enquanto")){
            pilha.empilhar("<cod>");
            pilha.empilhar("<C>");
        }
        else if(lista.get(pos).equals("escreva")){
            pilha.empilhar("<cod>");
            pilha.empilhar("<C>");
        }
        else if(lista.get(pos).equals("inteiro")){
            pilha.empilhar("<cod>");
            pilha.empilhar("<C>");
        }
        else System.out.println(" Erro!");
    }
    
    public static void CondC(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("id")){
            pilha.empilhar("<ATRIB>");
        }
        else if(lista.get(pos).equals("se")){
            pilha.empilhar("<SE>");
        }
        else if(lista.get(pos).equals("enquanto")){
            pilha.empilhar("<ENQUANTO>");
        }
        else if(lista.get(pos).equals("escreva")){
            pilha.empilhar("<ESCREVA>");
        }
        else if(lista.get(pos).equals("inteiro")){
            pilha.empilhar("<VARIAVEL>");
        }
        else System.out.println(" Erro!");
    }
    
    public static void CondSE(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("se")){
            pilha.empilhar("<SENAO>");
            pilha.empilhar("]");
            pilha.empilhar("<cod>");
            pilha.empilhar("[");
            pilha.empilhar("entao");
            pilha.empilhar("]");
            pilha.empilhar("<BOOLEXP>");
            pilha.empilhar("[");
            pilha.empilhar("se");
        }
    }
    
    public static void CondSENAO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("$")){
            
        }
        else if(lista.get(pos).equals("]")){
            
        }
        else if(lista.get(pos).equals("id")){
            
        }
        else if(lista.get(pos).equals("fimenq")){
            
        }
        else if(lista.get(pos).equals("se")){
            
        }
        else if(lista.get(pos).equals("senao")){
            pilha.empilhar("]");
            pilha.empilhar("<SENAO>");
            pilha.empilhar("[");
            pilha.empilhar("faca");
            pilha.empilhar("]");
            pilha.empilhar("<BOOLEXP>");
            pilha.empilhar("[");
            pilha.empilhar("senao");
        }
        else if(lista.get(pos).equals("enquanto")){
            
        }
        else if(lista.get(pos).equals("escreva")){
            
        }
        else if(lista.get(pos).equals("inteiro")){
            
        }
    }
    
    public static void CondENQUANTO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("enquanto")){
            pilha.empilhar("fimenq");
            pilha.empilhar("]");
            pilha.empilhar("<cod>");
            pilha.empilhar("[");
            pilha.empilhar("faca");
            pilha.empilhar("]");
            pilha.empilhar("<BOOLEXP>");
            pilha.empilhar("[");
            pilha.empilhar("enquanto");
        }
    }
    
    public static void CondESCREVA(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("escreva")){
            pilha.empilhar(";");
            pilha.empilhar("'");
            pilha.empilhar("<ESCOPO>");
            pilha.empilhar("'");
            pilha.empilhar("escreva");
        }
    }
    
    public static void CondVARIAVEL(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("inteiro")){
            pilha.empilhar(";");
            pilha.empilhar("id");
            pilha.empilhar("<TIPO>");
        }
    }
    
    public static void CondTIPO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("inteiro")){
            pilha.empilhar("inteiro");
        }
    }
    
    public static void CondATR(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("id")){
            pilha.empilhar(";");
            pilha.empilhar("<CaldaATRIB>");
            pilha.empilhar("=");
            pilha.empilhar("id");
        }
    }
    
    public static void CondBOOLEXP(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar("<BOOLTERMO>");
            pilha.empilhar("<BOOLFATOR>");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<BOOLTERMO>");
            pilha.empilhar("<BOOLFATOR>");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<BOOLTERMO>");
            pilha.empilhar("<BOOLFATOR>");
        }
    }
    
    public static void CondBOOLFATOR(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar("<BOOLFATOR>");
            pilha.empilhar("<EXP>");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<BOOLFATOR>");
            pilha.empilhar("<EXP>");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<BOOLFATOR>");
            pilha.empilhar("<EXP>");
        }
    }
    
    public static void CondBOOLTERMO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("]")){
            
        }
        else if(lista.get(pos).equals("maior")){
            pilha.empilhar("<BOOLTERMO>");
            pilha.empilhar("<BOOLFATOR>");
            pilha.empilhar("<MAIOR>");
        }
    }
    
    public static void CondMAIOR(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("maior")){
            pilha.empilhar("maior");
        }
    }
    
    public static void CondMENOR(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("menor")){
            pilha.empilhar("menor");
        }
    }
    
    public static void CondBOOLFATOR2(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("]")){
            
        }
        else if(lista.get(pos).equals("menor")){
            pilha.empilhar("<BOOLFATOR2>");
            pilha.empilhar("<EXP>");
            pilha.empilhar("<MENOR>");
        }
        else if(lista.get(pos).equals("maior")){
            
        }
    }
    
    public static void CondCaldaATRIB(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar("<EXP>");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<EXP>");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<EXP>");
        }
        else if(lista.get(pos).equals("leia")){
            pilha.empilhar("<LEIA>");
        }
    }
    
    public static void CondLEIA(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("leia")){
            pilha.empilhar("leia");
        }
    }
    
    public static void CondEXP(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar("<TERMO>");
            pilha.empilhar("<FATOR>");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<TERMO>");
            pilha.empilhar("<FATOR>");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<TERMO>");
            pilha.empilhar("<FATOR>");
        }
    }
    
    public static void CondESCOPO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("'")){
            
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<ESCOPO>");
            pilha.empilhar("id");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<ESCOPO>");
            pilha.empilhar("num");
        }
    }
    public static void CondARIT(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("soma")){
            pilha.empilhar("soma");
        }
        else if(lista.get(pos).equals("subt")){
            pilha.empilhar("subt");
        }
        else if(lista.get(pos).equals("mult")){
            pilha.empilhar("mult");
        }
        else if(lista.get(pos).equals("div")){
            pilha.empilhar("div");
        }
    }
    
    public static void CondFATOR(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar("<FATORTAIL>");
            pilha.empilhar("<ITEM>");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("<FATORTAIL>");
            pilha.empilhar("<ITEM>");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("<FATORTAIL>");
            pilha.empilhar("<FATORTAIL>");
        }
    }
    public static void CondTERMO(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals(")")){
            
        }
        else if(lista.get(pos).equals("]")){
        
        }
        else if(lista.get(pos).equals(";")){
            
        }
        else if(lista.get(pos).equals("menor")){
            
        }
        else if(lista.get(pos).equals("maior")){
            
        }
        else if(lista.get(pos).equals("soma")){
                pilha.empilhar("<TERMO>");
                pilha.empilhar("<FATOR>");
                pilha.empilhar("<SOMA>");
        }
        else if(lista.get(pos).equals("subt")){
            pilha.empilhar("<TERMo>");
            pilha.empilhar("<FATOR>");
            pilha.empilhar("<SOMA>");
        }
    }
    
    public static void CondSOMA(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("soma")){
                pilha.empilhar("soma");
        }
        else if(lista.get(pos).equals("subt")){
            pilha.empilhar("subt");
        }
    }
    
    public static void CondITEM(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("(")){
            pilha.empilhar(")");
            pilha.empilhar("<EXP>");
            pilha.empilhar("(");
        }
        else if(lista.get(pos).equals("id")){
            pilha.empilhar("id");
        }
        else if(lista.get(pos).equals("num")){
            pilha.empilhar("num");
        }
    }
    
    public static void CondFATORTAIL(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals(")")){
            
        }
        else if(lista.get(pos).equals("]")){
            
        }
        else if(lista.get(pos).equals(";")){
            
        }
        else if(lista.get(pos).equals("menor")){
            
        }
        else if(lista.get(pos).equals("maior")){
            
        }
        else if(lista.get(pos).equals("soma")){
            
        }
        else if(lista.get(pos).equals("subt")){
            
        }
        else if(lista.get(pos).equals("mult")){
            pilha.empilhar("<FATORTAIL>");
            pilha.empilhar("<ITEM>");
            pilha.empilhar("<MULT>");
        }
        else if(lista.get(pos).equals("")){
            pilha.empilhar("<FATORTAIL>");
            pilha.empilhar("<ITEM>");
            pilha.empilhar("<MULT>");
        }
    }
    
    public static void CondMULT(ArrayList lista, int pos, Pilha pilha){
        if(lista.get(pos).equals("mult")){
            pilha.empilhar("mult");
        }
        else if(lista.get(pos).equals("div")){
            pilha.empilhar("div");
        }
    }
}