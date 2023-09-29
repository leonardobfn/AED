
# Medidas de Tendência Central --------------------------------------------

## Exemplo 1: provas dos alunos ---------

prova_1 <- c(7,8,9,6,8,7,10,6,7,8,7,5,10,7,8,6,6,9,10,8)
prova_2 <- c(4,3,8,7,4,4,1,5,1,4,7,3,1,4,4,8,5,5,4,6)

length(prova_1) # tamanho do vetor
length(prova_2) # tamanho do vetor

rol_prova_1 <- sort(prova_1) # organizando de forma crescente 

# sort(prova_1,decreasing = T) # organizando de forma decrescente 

### Média -------

media_p1 <- mean(prova_1)
print(media_p1)
media_p2 <- mean(prova_2)
print(media_p2)

###  Mediana ------

median_p1 <- median(prova_1)
print(median_p1)
median_p2 <- median(prova_2)
print(median_p2)


### Moda --------

#' Podemos utilizar a função table e verificar o número que mais se repete

table(prova_1)
table(prova_2)

### Quartis -------

#' De forma separada
Q1 <- quantile(prova_1,probs = 0.25)# primeiro quartil
Q2 <- quantile(prova_1,probs = 0.50)# segundo quartil
Q3 <- quantile(prova_1,probs = 0.75)# terceiro quartil
print(c(Q1,Q2,Q3))

#' Todos juntos
Q1_Q2_Q3 <- quantile(prova_1,probs = c(0.25,0.50,0.75))
print(Q1_Q2_Q3)

#' Interpretação: 25% dos alunos tiverem uma nota de até 6.75
#' Interpretação: 50% dos alunos tiverem uma nota de até 7.50
#' Interpretação: 75% dos alunos tiverem uma nota de até 8.25

#' c(0.25,0.50,0.75) são casos particulares
#' Podemos escolher outros valores entre (0,1)

quantile(prova_1,c(0.20,0.30,0.80))

#' Interpretação: 20% dos alunos tiveram uma nota de até 6

#' Observação: existem várias maneiras de calcular o quantil dos dados
#' Na função "quantile" podemos escolher o tipo a ser usando através
#' do argumento type. Existem nove possibilidades.
#' Para mais detalhes pedir ajuda: ?quantile


quantile(prova_1,probs = c(0.25),type = 1)

### Função summary ------

#' Através da função summary podemos obter alguns resultados de maneira rápida

summary(prova_1)



## Exemplo 2: provas dos alunos. Presença de NA--------

#' É comum que alguns dados tenham valores faltantes
#' O Símbolo NA siginica "NOT AVAILABLE"
#' Vamos supor as mesmas notas, mas faltando as notas de dois alunos

#' Substituindo as notas dos alunos 1 e 5 por NA

prova_1[c(1,5)] <- c(NA,NA)


mean(prova_1)
median(prova_1)
quantile(prova_1)

#' Nesse caso as funções retornaram NA ou Error
#' Devemos usar o argumento na.rm=T

mean(prova_1,na.rm = T)
median(prova_1,na.rm = T)
quantile(prova_1,na.rm = T,c(0.25,0.50,0.75))

#' No caso da função summary, ela consegue identificar NA

summary(prova_1)

## Exemplo 3: média ponderada ----------

#' Suponha que a média dos EE de um aluno seja 5
#' A nota da prova final foi 8
#' Calcule a média final MF = (2 X MEE + PF )/3

MEE <- 5 # MEE
PF <- 8 # PF

peso_MEE <- 2 # peso MEE
peso_PF <- 1 # peso PF

notas <- c(MEE,PF)
pesos <- c(peso_MEE,peso_PF)

weighted.mean(x = notas,w = pesos,na.rm = T)

#' forma direta

weighted.mean(c(5,8),c(2,1),na.rm = T)

## Exemplo 4: média trimed ----------

#'A média  truncada nada mais é do que a média desconsiderando algum percentil, 
#'o que a faz útil se você quer desconsiderar os outliers

x <- c(2,2,2,10,2,2,2,2,2,1)
mean(x,trim = 0.10,type=2) # removo 10% das observações inferiores e 10% das superiores


## Exemplo 5------------

#'Vamos considerar que as notas estão no formato "data.frame"
#'"data.frame": maneira de organizar os dados;
#'Semelhante a uma matriz mas as suas colunas têm nomes e podem conter dados de tipo diferente; 
#'Um data frame pode ser visto como uma tabela de uma base de dados;
#'cada linha corresponde a um registo (linha) da tabela. 

prova_1 <- c(7,8,9,6,8,7,10,6,7,8,7,5,10,7,8,6,6,9,10,8)
prova_2 <- c(4,3,8,7,4,4,1,5,1,4,7,3,1,4,4,8,5,5,4,6)
notas = data.frame(prova_1 = prova_1,
                   prova_2 = prova_2)

dim(notas) # quantidade de linhas X quantidade de colunas
nrow(notas)# quantidade de linhas
ncol(notas)# quantidade de colunas

head(notas) # vê as primeiras seis linhas dos dados
head(notas,10) # vê as primeiras dez linhas dos dados

colMeans(notas) #Forma 1
#colMeans(notas,na.rm = T) #Forma 1 com presença de "NA"

apply(notas,2,mean) #Forma 2
#apply(notas,2,mean,na.rm=T) #Forma 2 com presença de "NA"



## Exemplo 6------------

#' Suponha que as notas de duas turmas estão no formato de uma matriz

prova_1 <- c(7,8)
prova_2 <- c(4,3)

#' Notas nas colunas
notas_colunas = matrix( c(prova_1,prova_2),nrow = 2,ncol = 2) 
notas_colunas
colMeans(notas_colunas)
apply(notas_colunas,2,mean)

#' Notas nas linhas
notas_linhas = matrix( c(prova_1,prova_2),nrow = 2,ncol = 2,byrow = T) 
notas_linhas
rowMeans(notas_linhas)
apply(notas_linhas,1,mean)



