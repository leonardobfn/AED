# Variável numerica com categórica --------------


#' carregando o banco de dados:

dados = read.table("dados/temp_mun.txt")

head(dados)

typeof(dados$temperatura)
typeof(dados$municipio)

## Estatísticas descritivas por municípios ------------- 

#' temperatura média por município 
media <- tapply(dados$temperatura,dados$municipio,mean) 

#' variância por município 
vari <- tapply(dados$temperatura,dados$municipio,var) 

#' desvio padrão por município 
dp <- tapply(dados$temperatura,dados$municipio,sd) 

#' quantile por município 
quant <- tapply(dados$temperatura,dados$municipio,quantile,c(0.25,0.5,0.75)) 

#' summary por município 
quant <- tapply(dados$temperatura,dados$municipio,summary) 

## Possível gráfico --------------


boxplot(dados$temperatura~dados$municipio)
boxplot(dados$temperatura~dados$municipio,xlab = "Município",ylab="Temperatura")



