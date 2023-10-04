# Medidas de dispersão --------------------------------

## Exemplo 1: provas dos alunos ---------

prova_1 <- c(7,8,9,6,8,7,10,6,7,8,7,5,10,7,8,6,6,9,10,8)
prova_2 <- c(4,3,8,7,4,4,1,5,1,4,7,3,1,4,4,8,5,5,4,6)

rol_prova_1 <- sort(prova_1)
rol_prova_1

### Amplitude --------

#' forma 1
amplitude =  max(prova_1) - min(prova_1) # maior nota - menor nota
print(amplitude)

#' forma 2
min_max = range(prova_1)
min_max
amplitude = diff(min_max)
diff(   range(prova_1)   )

### Variância e desvio padrão -------------


var(prova_1) # variância

sqrt(var(prova_1))

sd(prova_1) # desvio padrão

### Coeficiente de variação ------------ 

cv_prova_1 = ( sd(prova_1)/mean(prova_1)  )*100
cv_prova_2 = ( sd(prova_2)/mean(prova_2)  )*100

### Diferença inter quartil - IQR -----------

#' Forma 1
Q1 = quantile(prova_1,probs = 0.25)
Q3 = quantile(prova_1,probs = 0.75)
IQR = Q3-Q1
print(IQR)

#' Forma 2
IQR(prova_1)


## Exemplo 2: provas dos alunos - fun describe ---------

#' Descritiva usando a função describe do pacote psych

#' Algumas funções já estão disponíveis no R e outras precisam baixar um pacote.
#' Pacote é um conjunto de funções criadas por um programador e disponibilizado para 
#' a comunidade.
 
install.packages("psych") # instalando o pacote
psych::describe(prova_2) # utilizando a função describe do pacote psych


prova_1 <- c(7,8,9,6,8,7,10,6,7,8,7,5,10,7,8,6,6,9,10,8)
prova_2 <- c(4,3,8,7,4,4,1,5,1,4,7,3,1,4,4,8,5,5,4,6)
notas = data.frame(prova_1 = prova_1,
                   prova_2 = prova_2)

psych::describe(notas)


