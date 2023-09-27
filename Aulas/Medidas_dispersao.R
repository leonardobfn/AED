# Medidas de dispersão --------------------------------

## Exemplo 1: provas dos alunos ---------

prova_1 <- c(7,8,9,6,8,7,10,6,7,8,7,5,10,7,8,6,6,9,10,8)
prova_2 <- c(4,3,8,7,4,4,1,5,1,4,7,3,1,4,4,8,5,5,4,6)

rol_prova_1 <- sort(prova_1)

### Amplitude --------

#' forma 1
amplitude =  max(prova_1) - min(prova_2) # maior nota - menor nota

#' forma 2
min_max = range(prova_1)

amplitude = diff(min_max)



### Variância e desvio padrão -------------

var(prova_1)
sd(prova_1)

### Coeficiente de variação ------------ 

cv_prova_1 = (sd(prova_1)/mean(prova_1))*100



