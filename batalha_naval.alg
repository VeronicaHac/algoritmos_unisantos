algoritmo "semnome"
// Função :
// Autor :
// Data : 07/06/2023
// Seção de Declarações
var

mapa_batalha_jogador_um: vetor[1..8,1..8] de caracter
mapa_batalha_jogador_dois: vetor[1..8,1..8] de caracter
i,j :inteiro
jogador_um, jogador_dois :inteiro
linha, coluna: inteiro
n: inteiro
barcos_um :inteiro
barcos_dois :inteiro




inicio

barcos_um <- 0
barcos_dois <- 0

escreval("---------------------------------------------------")
escreval("-------      B A T A L H A   N A V A L           --")
escreval("---------------------------------------------------")


// escrevendo tabuleiro jogador 1

escreval ("          JOGADOR 1     ")
escreval("   1  2  3  4  5  6  7  8")
para i de 1 ate 8 faca
     escreva(i)
     para j de 1 ate 8 faca
          mapa_batalha_jogador_um[i,j] <- " . "
          escreva(mapa_batalha_jogador_um[i,j])
     fimpara
     escreval()
fimpara

//escrevendo tabuleiro jogador 2


escreval()
escreval ("          JOGADOR 2     ")
escreval("   1  2  3  4  5  6  7  8")
para i de 1 ate 8 faca
     escreva(i)
     para j de 1 ate 8 faca
          mapa_batalha_jogador_dois[i,j] <- " - "
          escreva(mapa_batalha_jogador_dois[i,j])
     fimpara
     escreval()
fimpara


// POSICIONANDO BARCOS JOGADOR 1

para n de 1 ate 4 faca

     repita
        escreval()
        escreval("Jogador 1:")
        escreval("Digite o Número da linha e coluna que irá posicionar o navio")
        escreva("Linha: ")
        leia(linha)
        escreva("Coluna: ")
        leia(coluna)

        se(mapa_batalha_jogador_um[linha,coluna] = "W") entao
             escreval("Esse campo já foi escolhido, digite novamente")
        fimse
     ate mapa_batalha_jogador_um[linha,coluna] = " . "
     
        mapa_batalha_jogador_um[linha,coluna] <- "W"

        escreval ("          JOGADOR 1     ")
        escreval("   1  2  3  4  5  6  7  8")
        para i de 1 ate 8 faca
             escreva(i)
             para j de 1 ate 8 faca
                  se (mapa_batalha_jogador_um[i,j] = "W") entao
                     escreva(" W ")
                  senao
                       mapa_batalha_jogador_um[i,j] <- " . "
                  escreva(mapa_batalha_jogador_um[i,j])
                  fimse
             fimpara
             escreval()
        fimpara
fimpara

// POSICIONANDO BARCOS JOGADOR 2

para n de 1 ate 4 faca

     repita
        escreval()
        escreval("Jogador 2:")
        escreval("Digite o Número da linha e coluna que irá posicionar o navio")
        escreva("Linha: ")
        leia(linha)
        escreva("Coluna: ")
        leia(coluna)

        se(mapa_batalha_jogador_dois[linha,coluna] = "J") entao
                escreval("Esse campo já foi escolhido, digite novamente")
           fimse
     ate mapa_batalha_jogador_dois[linha,coluna] = " - "
     

        mapa_batalha_jogador_dois[linha,coluna] <- "J"

        escreval ("          JOGADOR 2     ")
        escreval("   1  2  3  4  5  6  7  8")
        para i de 1 ate 8 faca
             escreva(i)
             para j de 1 ate 8 faca
                  se (mapa_batalha_jogador_dois[i,j] = "J") entao
                     escreva(" J ")
                  senao
                       mapa_batalha_jogador_dois[i,j] <- " - "
                  escreva(mapa_batalha_jogador_dois[i,j])
                  fimse
             fimpara
             escreval()
        fimpara
fimpara

// INICIANDO O JOGO

limpatela()
escreval("---------------------------------------------------")
escreval("-------      B A T A L H A   N A V A L           --")
escreval("---------------------------------------------------")
escreval("---------------------------------------------------")
escreval("---     I N I C I A N D O    O    J O G O       ---")
escreval("---------------------------------------------------")



// VEZ DO JOGADOR 1 DE LANÇAR MISSEIS

repita

escreval("---------------------------------------------------")
escreval("-------           J O G A D O R   1:             --")
escreval("---------------------------------------------------")
escreval("---------------------------------------------------")
escreval("---    LANCE OS MISSEIS NO CAMPO ADVERSÁRIO     ---")
escreval("---------------------------------------------------")
   escreva("LINHA: ")
   leia(linha)
   escreva("COLUNA: ")
   leia(coluna)

   se(mapa_batalha_jogador_dois[linha,coluna] = "J") entao
       escreval(" TIRO CERTO !! ")
       barcos_um <- barcos_um + 1
       mapa_batalha_jogador_dois[linha,coluna] <- "O"
       se (barcos_um = 4) entao
          escreval(" V E N C E D O R    J O G A D O R   1 !!!!!")
       fimse
   senao
        escreval(" TIRO NA AGUA ")
        mapa_batalha_jogador_dois[linha,coluna] <- " X "
   fimse

           escreval()
           escreval ("     CAMPO JOGADOR 2    ")
           escreval("   1  2  3  4  5  6  7  8")
           para i de 1 ate 8 faca
                escreva(i)
                para j de 1 ate 8 faca
                     se (mapa_batalha_jogador_dois[i,j] = "O") entao
                        escreva(" O ")
                        fimse
                        se(mapa_batalha_jogador_dois[i,j] = " X ") entao
                            escreva(" X ")
                        senao
                             escreva(" - ")
                     fimse
                fimpara
                escreval()
           fimpara



   // VEZ DO JOGADOR 2 LANÇAR MISSEIS



escreval("---------------------------------------------------")
escreval("-------           J O G A D O R   2:             --")
escreval("---------------------------------------------------")
escreval("---------------------------------------------------")
escreval("---    LANCE OS MISSEIS NO CAMPO ADVERSÁRIO     ---")
escreval("---------------------------------------------------")
   escreva("LINHA: ")
   leia(linha)
   escreva("COLUNA: ")
   leia(coluna)

   se(mapa_batalha_jogador_um[linha,coluna] = "W") entao
       mapa_batalha_jogador_um[linha,coluna] <- "O"

       escreval(" TIRO CERTO !! ")
       barcos_dois <- barcos_dois + 1
       mapa_batalha_jogador_um[linha,coluna] <- "O"
       se (barcos_dois = 4) entao
          escreval(" V E N C E D O R    J O G A D O R   2 !!!!!")
       fimse
   senao
        escreval(" TIRO NA AGUA ")
        mapa_batalha_jogador_um[linha,coluna] <- " X "
   fimse


           escreval()
           escreval ("     CAMPO JOGADOR 1    ")
           escreval("   1  2  3  4  5  6  7  8")
           para i de 1 ate 8 faca
                escreva(i)
                para j de 1 ate 8 faca
                     se (mapa_batalha_jogador_um[i,j] = "O") entao
                        escreva(" O ")
                        fimse
                        se(mapa_batalha_jogador_um[i,j] = " X ") entao
                           escreva(" X ")
                        senao
                          escreva(" . ")
                        fimse

                fimpara
                escreval()
           fimpara

ate (barcos_um = 4) ou (barcos_dois = 4)




















fimalgoritmo
