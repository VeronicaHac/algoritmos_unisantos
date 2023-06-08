algoritmo "jogo_da_velha"
// Função : Jogar um Jogo da Velha
// Autor : Verônica
// Data : 22/05/2023
// Seção de Declarações

 
var
// Declarar variaveis

tabuleiro: vetor[1..3,1..3] de caracter
cont,i,j :inteiro
start :inteiro
j1,j2 :caracter
X,O :caracter
posicao :inteiro
l,c :inteiro
contador :inteiro


inicio
// Seção de Comandos


//------------------------------------------------------------------
//                           TABULEIRO
//------------------------------------------------------------------
contador <- 0
escreval(" ")
escreval(" ")
escreval(" ")
escreval("===========================================")
escreval("               JOGO DA VELHA               ")
escreval("-------------------------------------------")

para i de 1 ate 3 faca
     para j de 1 ate 3 faca
          escreva("   | ")
          cont <- cont + 1
          escreva(cont:4)
     fimpara
          escreval("   | ")
          
fimpara

escreval(" ")
escreval(" ")
escreval(" ")

//------------------------------------------------------------------
//                inicio do jogo e escolha de jogador

escreval("-------------------------------------------")
escreval("            PARA INICIAR DIGITE 1          ")
escreval("-------------------------------------------")

leia(start)

enquanto (start <> 1) faca
         escreval("DIGITO INCORRETO! CASO DESEJE INICIAR DIGITE 1")
         leia(start)

fimenquanto


      escreval(" JOGADOR 1: DIGITE SE IRÁ JOGAR COM 'X' OU 'O'")
      leia(j1)
  se ((j1 = "O") ou (j1 = "X")) entao
         escreval("INICIANDO JOGO...")
         escreval("---------------------------------------")
         se (j1 = "X") entao
              X <- j1
              j2 <- "O"
              O <- j2
         senao
              O <- j1
              j2 <- "X"
              X <- j2
   fimse
   
senao
     escreval(" ESCOLHA INDISPONÍVEL, DIGITE 'X' ou 'O'")
fimse


   
//------------------------------------------------------------------
//                 Trocar de Posição com o 'X' ou 'O'

   para contador de 1 ate 9 faca


   escreval(" ")
   escreval(" ")
   escreval(" ")

        escreval("JOGADOR 1: DIGITE O NÚMERO DA POSIÇÃO QUE DESEJA OCUPAR COM O ",j1)
        leia(posicao)


   se (posicao = 1) entao
      se ((tabuleiro[1,1] <> "O") e (tabuleiro[1,1] <> "X")) entao
         tabuleiro[1,1] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse

   fimse

   se (posicao = 2) entao
      se ((tabuleiro[1,2] <> "O") e (tabuleiro[1,2] <> "X")) entao
         tabuleiro[1,2] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 3) entao
      se ((tabuleiro[1,3] <> "O") e (tabuleiro[1,3] <> "X")) entao
         tabuleiro[1,3] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 4) entao
      se ((tabuleiro[2,1] <> "O") e (tabuleiro[2,1] <> "X")) entao
         tabuleiro[2,1] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 5) entao
      se ((tabuleiro[2,2] <> "O") e (tabuleiro[2,2] <> "X")) entao
         tabuleiro[2,2] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 6) entao
      se ((tabuleiro[2,3] <> "O") e (tabuleiro[2,3] <> "X")) entao
         tabuleiro[2,3] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se (posicao = 7) entao
      se ((tabuleiro[3,1] <> "O") e (tabuleiro[3,1] <> "X")) entao
         tabuleiro[3,1] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se (posicao = 8) entao
      se ((tabuleiro[3,2] <> "O") e (tabuleiro[3,2] <> "X")) entao
         tabuleiro[3,2] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 9) entao
      se ((tabuleiro[3,3] <> "O") e (tabuleiro[3,3] <> "X")) entao
         tabuleiro[3,3] <- X
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se ((posicao < 1) e (posicao > 10)) entao
          escreval("OPÇÃO INVÁLIDA")
   fimse

   escreval(" ")
   escreval(" ")
   escreval(" ")

   escreval(" |  ", tabuleiro[1,1]:4,"|  ",tabuleiro[1,2]:4,"|  ", tabuleiro[1,3]:4,"|")
   escreval("---------------------------")
   escreval(" |  ", tabuleiro[2,1]:4,"|  ",tabuleiro[2,2]:4,"|  ", tabuleiro[2,3]:4,"|")
   escreval("---------------------------")
   escreval(" |  ", tabuleiro[3,1]:4,"|  ",tabuleiro[3,2]:4,"|  ", tabuleiro[3,3]:4,"|")



   escreval(" ")
   escreval(" ")
   escreval(" ")

   escreval("JOGADOR 2: DIGITE O NÚMERO DA POSIÇÃO QUE DESEJA OCUPAR COM O ",j2)
        leia(posicao)


   se (posicao = 1) entao
      se ((tabuleiro[1,1] <> "O") e (tabuleiro[1,1] <> "X")) entao
         tabuleiro[1,1] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 2) entao
      se ((tabuleiro[1,2] <> "O") e (tabuleiro[1,2] <> "X")) entao
         tabuleiro[1,2] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 3) entao
      se ((tabuleiro[1,3] <> "O") e (tabuleiro[1,3] <> "X")) entao
         tabuleiro[1,3] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 4) entao
      se ((tabuleiro[2,1] <> "O") e (tabuleiro[2,1] <> "X")) entao
         tabuleiro[2,1] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 5) entao
      se ((tabuleiro[2,2] <> "O") e (tabuleiro[2,2] <> "X")) entao
         tabuleiro[2,2] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse


   se (posicao = 6) entao
      se ((tabuleiro[2,3] <> "O") e (tabuleiro[2,3] <> "X")) entao
         tabuleiro[2,3] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se (posicao = 7) entao
      se ((tabuleiro[3,1] <> "O") e (tabuleiro[3,1] <> "X")) entao
         tabuleiro[3,1] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se (posicao = 8) entao
      se ((tabuleiro[3,2] <> "O") e (tabuleiro[3,2] <> "X")) entao
         tabuleiro[3,2] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se (posicao = 9) entao
      se ((tabuleiro[3,3] <> "O") e (tabuleiro[3,3] <> "X")) entao
         tabuleiro[3,3] <- O
      senao
         escreval("OPONENTE JÁ ESCOLHEU ESSA POSIÇÃO, PERDEU A VEZ!")
      fimse
   fimse

   se ((posicao < 1) e (posicao > 10)) entao
          escreval("OPÇÃO INVÁLIDA")
   fimse

   escreval(" |  ", tabuleiro[1,1]:4,"|  ",tabuleiro[1,2]:4,"|  ", tabuleiro[1,3]:4,"|")
   escreval("---------------------------")
   escreval(" |  ", tabuleiro[2,1]:4,"|  ",tabuleiro[2,2]:4,"|  ", tabuleiro[2,3]:4,"|")
   escreval("---------------------------")
   escreval(" |  ", tabuleiro[3,1]:4,"|  ",tabuleiro[3,2]:4,"|  ", tabuleiro[3,3]:4,"|")

   escreval(" ")
   escreval(" ")
   escreval(" ")


fimpara

fimalgoritmo
