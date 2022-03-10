algoritmo "Projeto Semana 5"
var
opcaoMenu, novaOperacao: literal
temperatura, horario : vetor[1..4] de real
i,j: inteiro
aux1,aux2: real

procedimento mostrarMenu()
inicio
   escreval("Escolha uma das opções do Menu abaixo:")
   escreval("")
   escreval("1 - Converter temperatura de Celsius (°C) para Fahrenheit (°F)")
   escreval("2 - Converter temperatura de Fahrenheit (°F) para Celsius (°C)")
   escreval("3 - Finalizar o programa")
   leia(opcaoMenu)
fimprocedimento

procedimento armazenar()
inicio
para i de 1 ate 4 faca
     escreva("Informe a temperatura", i," registrada: ")
     leia(temperatura[i])
     escreva("Informe a hora em que essa temperatura foi medida:")
     leia(horario[i])
     escreval()
fimpara

fimprocedimento

procedimento ordenar() //Método Bolha
inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
        se temperatura[j] > temperatura[i] entao
           aux1 <- temperatura[i]
           temperatura[i] <- temperatura[j]
           temperatura[j] <- aux1
           aux2 <- horario[i]
           horario[i] <- horario[j]
           horario[j] <- aux2
        fimse
   fimpara
fimpara
fimprocedimento

procedimento converterTemp()
inicio

ordenar()

se opcaoMenu = "1" entao
   para i de 1 ate 4 faca
      escreval("Temperatura", temperatura[i], "°C, registrada às", horario[i], "h corresponde a ", ((temperatura[i] * 1.8) + 32), "°F")
   fimpara
senao
   para i de 1 ate 4 faca
      escreval("Temperatura", temperatura[i], "°F, registrada às", horario[i], "h corresponde a ", ((temperatura[i] - 32) / 1.8), "°C")
   fimpara
fimse

fimprocedimento

inicio
repita
   mostrarMenu()
   escolha opcaoMenu
   caso "1"
       armazenar()
       converterTemp()
   caso "2"
       armazenar()
       converterTemp()
   caso "3"
   escreval("Espero que o programa tenha atendido às expectativas!")
   interrompa
   outrocaso
   escreval("Por gentileza, informe uma das opções apresentadas acima!")
   fimescolha

escreval("Deseja fazer uma nova operação? (s/n)")
leia(novaOperacao)
limpatela
ate (opcaoMenu = "3") OU (novaOperacao = "n")
 se novaOperacao = "n" entao
   escreval ("Espero que o programa tenha atendido às expectativas!")
fimse

fimalgoritmo
