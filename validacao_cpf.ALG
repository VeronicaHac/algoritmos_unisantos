Algoritmo "consultar_cpf"
// Disciplina   : Algoritmos
// Professor   : João
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Verônica
// Data atual  : 09/05/2023
Var
cpf: caracter
n1,n2,n3,n4,n5,n6,n7,n8,n9: inteiro
df1,df2: inteiro
tam: inteiro
soma1,soma2: inteiro
resto1,resto2: real


Inicio

repita
      escreva ("Digite o CPF: ")
      leia(cpf)
      
      tam <- compr(cpf)
      
ate ((tam = 11) ou (cpf = "0"))


se tam = 11 entao

   n1 <- caracpnum(copia (cpf,1,1) )
   n2 <- caracpnum(copia (cpf,2,1) )
   n3 <- caracpnum(copia (cpf,3,1) )
   n4 <- caracpnum(copia (cpf,4,1) )
   n5 <- caracpnum(copia (cpf,5,1) )
   n6 <- caracpnum(copia (cpf,6,1) )
   n7 <- caracpnum(copia (cpf,7,1) )
   n8 <- caracpnum(copia (cpf,8,1) )
   n9 <- caracpnum(copia (cpf,9,1) )
   
   df1 <- caracpnum(copia (cpf,10,1) )
   df2 <- caracpnum(copia (cpf,11,1) )

fimse

     soma1 <- n1*10 + n2*9 + n3*8 + n4*7 + n5*6 + n6*5 + n7*4 + n8*3 + n9*2
     resto1 <- (soma1 * 10) mod 11
     
     soma2 <- n1*11 + n2*10 + n3*9 + n4*8 + n5*7 + n6*6 + n7*5 + n8*4 + n9*3 + df1*2
     resto2 <- (soma2 * 10) mod 11
     
     

     
se (resto1 = df1) e (resto2 = df2) entao
   escreval("O CPF é valido!")
   
senao
     escreval("CPF não existente")
fimse



Fimalgoritmo