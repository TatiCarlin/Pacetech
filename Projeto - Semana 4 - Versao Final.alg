algoritmo "PROJETO SEMANA 4"

var
opcaoMenu, novaOperacao : literal
tempCelsius1, tempCelsius2, tempFahren1, tempFahren2, cotacaodolar, valorreal, valordolar : real
inicio

repita

Escreval ("Escolha uma das op��es do Menu abaixo:")
Escreval("")
Escreval ("1 - Converter temperatura de Celsius (�C) para Fahrenheit (�F)")
Escreval ("2 - Converter temperatura de Fahrenheit (�F) para Celsius (�C)")
Escreval ("3 - Converter moeda de Reais para D�lares")
Escreval ("4 - Converter moeda de D�lares para Reais")
Escreval ("5 - Finalizar o programa")
Escreval("")
leia(opcaoMenu)
Escreval("")
escolha(opcaoMenu)

   caso "1"
      Escreval ("Informe a temperatura em Celsius (�C):")
      leia(tempCelsius1)
      tempFahren1 <- tempCelsius1 * 1.8 + 32
      Escreval ("A temperatura", tempCelsius1, "�C equivale a", tempFahren1, "�F")

   caso "2"
      Escreval ("Informe a temperatura em Fahrenheit (�F):")
      leia (tempFahren2)
      tempCelsius2 <-(tempFahren2 - 32) / 1.8
      Escreval ("A temperatura", tempFahren2, "�F equivale a", tempCelsius2, "�C")

   caso "3"
      Escreval ("Informe a cota��o atual do d�lar, em reais:")
      leia (cotacaodolar)
      Escreval ("Informe o valor, em reais, para converter em d�lares:")
      leia(valorreal)
      valordolar <- valorreal * cotacaodolar
      Escreval ("R$", valorreal, " s�o US$", valordolar)

   caso "4"
      Escreval ("Informe a cota��o atual do d�lar, em reais:")
      leia (cotacaodolar)
      Escreval ("Informe o valor, em d�lares, para converter em reais:")
      leia(valordolar)
      valorreal <- valordolar / cotacaodolar
      Escreval ("US$", valordolar, " s�o R$", valorreal)

   caso "5"
      Escreval ("Espero que o programa tenha atendido �s expectativas!")
      interrompa

   outrocaso
      Escreval ("Por gentileza, informe uma das op��es apresentadas acima!")

fimescolha
Escreval("")
Escreval("Deseja fazer uma nova opera��o? (s/n)")
leia(novaOperacao)

limpatela

ate (opcaoMenu = "5") OU (novaOperacao = "n")

se novaOperacao = "n" entao
   Escreval ("Espero que o programa tenha atendido �s expectativas!")
fimse

fimalgoritmo
