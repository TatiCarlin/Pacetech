package ProjetoSemana7;

public class Main {

        public static void main(String[] args) {
        
        Empregado a = new Empregado("Fulana", "de Tal", 6000f);
                                       
        System.out.println("O sal�rio anual de " + a.getPrimeiroNome() + " " + a.getSobrenome() + " �: R$" + a.calcularSalarioAnual());
        System.out.println("Com aumento de 10%, o sal�rio anual passa a ser: R$" + a.calcularSalarioAnualComAumento());
        
        Empregado b = new Empregado("Ciclano", "de Tal", 5000f);
        
        System.out.println("O sal�rio anual de " + b.getPrimeiroNome() + " " + b.getSobrenome() + " �: R$" + b.calcularSalarioAnual());
        System.out.println("Com aumento de 10%, o sal�rio anual passa a ser: R$" + b.calcularSalarioAnualComAumento());    
            
    }
    
}
