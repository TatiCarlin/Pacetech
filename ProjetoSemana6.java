package ProjetoSemana6;

import java.util.Scanner;
import java.lang.*;      

public class Main {

    public static void main(String[] args) {

        String opcaoMenu, novaOperacao;
        float tempCelsius1, tempCelsius2, tempFahren1, tempFahren2, cotacaodolar, valorreal, valordolar;               
        
        Scanner leitor = new Scanner(System.in);
        
        do{
            System.out.println("Escolha uma das op��es do Menu abaixo:");
            System.out.println();
            System.out.println("1 - Converter temperatura de Celsius (�C) para Fahrenheit (�F)");
            System.out.println("2 - Converter temperatura de Fahrenheit (�F) para Celsius (�C)");
            System.out.println("3 - Converter moeda de Reais para D�lares");
            System.out.println("4 - Converter moeda de D�lares para Reais");
            System.out.println("5 - Finalizar o programa");
            
            opcaoMenu = leitor.next();
            System.out.println();
            
            switch(opcaoMenu){
                case "1":
                    System.out.print("Informe a temperatura em Celsius (�C):");
                    tempCelsius1 = leitor.nextFloat();
                    tempFahren1 = tempCelsius1 * 1.8f + 32;
                    System.out.println("A temperatura" + tempCelsius1 + "�C equivale a" + tempFahren1 + "�F");
                    break;
                case "2":
                    System.out.print("Informe a temperatura em Fahrenheit (�F):");
                    tempFahren2 = leitor.nextFloat();
                    tempCelsius2 = (tempFahren2 - 32) / 1.8f;
                    System.out.println("A temperatura" + tempFahren2 + "�F equivale a" + tempCelsius2 + "�C");
                    break;
                case "3":
                    System.out.print("Informe a cota��o atual do d�lar, em reais:");
                    cotacaodolar = leitor.nextFloat();
                    System.out.print("Informe o valor, em reais, para converter em d�lares:");
                    valorreal = leitor.nextFloat();
                    valordolar = valorreal * cotacaodolar;
                    System.out.print("R$" + valorreal + " s�o US$" + valordolar);
                    break;
                case "4":
                    System.out.print("Informe a cota��o atual do d�lar, em reais:");
                    cotacaodolar = leitor.nextFloat();
                    System.out.print("Informe o valor, em d�lares, para converter em reais:");
                    valordolar = leitor.nextFloat();
                    valorreal = valordolar / cotacaodolar;
                    System.out.print("US$" + valordolar + " s�o R$" + valorreal);
                    break;
                case "5":
                    System.out.print("Espero que o programa tenha atendido �s expectativas!");
                    System.exit(0);                    
                default:
                    System.out.print("Por gentileza, informe uma das op��es apresentadas acima!");
              
            }          
            
            System.out.print("Deseja fazer uma nova opera��o? (s/n)");
            novaOperacao = leitor.next();
                if (novaOperacao == "n"){
                    System.out.print("Espero que o programa tenha atendido �s expectativas!");  
                } else {
                    System.out.println();
                }  
                   
        } while ( !((opcaoMenu.equals("5")) || (novaOperacao.equals("n"))));   
           
    }

}
