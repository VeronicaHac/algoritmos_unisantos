Algoritmo "jogo_"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 07/06/2023
Var
// variaveis base de dados

perguntas: vetor[1..30] de caractere
respostas: vetor[1..30] de inteiro


// M I N H A S   V A R I A V E I S

nj: inteiro

nomes: vetor[1..5] de caracter
pontuacao: vetor[1..5,1..5] de caractere
resposta: inteiro
i,j,x,y :inteiro
contador: inteiro

acertos: vetor[1..5] de inteiro
erros: vetor[1..5] de inteiro


Inicio

// algoritmo base de dados

perguntas[1] <- "100 + 1 = "
perguntas[2] <- "99 - 2 = "
perguntas[3] <- "98 + 3 = "
perguntas[4] <- "97 - 4 = "
perguntas[5] <- "96 + 5 = "
perguntas[6] <- "95 - 6 = "
perguntas[7] <- "94 + 7 = "
perguntas[8] <- "93 - 8 = "
perguntas[9] <- "92 + 9 = "
perguntas[10] <- "91 - 10 = "
perguntas[11] <- "90 + 11 = "
perguntas[12] <- "89 - 12 = "
perguntas[13] <- "88 + 13 = "
perguntas[14] <- "87 - 14 = "
perguntas[15] <- "86 + 15 = "
perguntas[16] <- "85 - 16 = "
perguntas[17] <- "84 + 17 = "
perguntas[18] <- "83 - 18 = "
perguntas[19] <- "82 + 19 = "
perguntas[20] <- "81 - 20 = "
perguntas[21] <- "80 + 21 = "
perguntas[22] <- "79 - 22 = "
perguntas[23] <- "78 + 23 = "
perguntas[24] <- "77 - 24 = "
perguntas[25] <- "76 + 25 = "
perguntas[26] <- "75 - 26 = "
perguntas[27] <- "74 + 27 = "
perguntas[28] <- "73 - 28 = "
perguntas[29] <- "72 + 29 = "
perguntas[30] <- "71 - 30 = "

// definição das respostas para o jogo
respostas[1] <- 101
respostas[2] <- 97
respostas[3] <- 101
respostas[4] <- 93
respostas[5] <- 101
respostas[6] <- 89
respostas[7] <- 101
respostas[8] <- 85
respostas[9] <- 101
respostas[10] <- 81
respostas[11] <- 101
respostas[12] <- 77
respostas[13] <- 101
respostas[14] <- 73
respostas[15] <- 101
respostas[16] <- 69
respostas[17] <- 101
respostas[18] <- 65
respostas[19] <- 101
respostas[20] <- 61
respostas[21] <- 101
respostas[22] <- 57
respostas[23] <- 101
respostas[24] <- 53
respostas[25] <- 101
respostas[26] <- 49
respostas[27] <- 101
respostas[28] <- 45
respostas[29] <- 101
respostas[30] <- 41





// -------- M E U S   C O M A N D O S ------------

contador <- 0
y <- 0

repita

   escreval("DIGITE O NUMERO DE JOGADORES")
   leia(nj)

   se (nj < 2) entao
      escreval("O numero nao deve ser menor do que 2. Digite novamente")
   fimse
   se (nj > 5) entao
      escreval("O numero nao deve ser menor do que 5. Digite novamente")
   fimse

ate (nj >= 2) e (nj <= 5)



   para i de 1 ate nj faca
        repita
        escreval("DIGITE O NOME DO JOGADOR ",i)
        leia(nomes[i])

        se (compr(nomes[i]) < 2) entao
           escreval("O nome nao deve ser menor do que 2 letras. Digite novamente")
        fimse
        se (compr(nomes[i]) > 12) entao
           escreval("O nome nao deve ser menor do que 12 letras. Digite novamente")
        fimse
        
          ate (compr(nomes[i]) > 2) e (compr(nomes[i]) < 12)
   fimpara
   
   
   
//------------ I N I C I O   D O   J O G O  ----------------

para i de 1 ate nj faca
     para j de 1 ate 5 faca
          pontuacao[i,j] <- " - "
     fimpara
fimpara

repita
   y <- y + 1
   para i de 1 ate nj faca
        escreval(nomes[i])
        para j de 1 ate 5 faca
             escreva(pontuacao[i,j])
        fimpara
        escreval()
   fimpara

   para i de 1 ate nj faca
        contador <- contador + 1
        escreval(nomes[i]," responda a pergunta")
        escreval(perguntas[contador])
        leia(resposta)

        se(respostas[contador] = resposta)entao
           escreval("acertou")
           pontuacao[i,y] <- " V "
           acertos[i] <- acertos[i] + 1
        senao
           escreval("errou")
           pontuacao[i,y] <- " X "
           erros[i] <- erros[i] + 1
        fimse
   fimpara
   
ate y = 5


escreval(" F I N A L   D O   J O G O ")
escreval("---------------------------")

para i de 1 ate nj faca
     escreval("O jogador ",nomes[i]," acertou", acertos[i]," questoes e errou ",erros[i]," questoes")
fimpara





Fimalgoritmo