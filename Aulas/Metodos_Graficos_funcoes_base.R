
# Métodos gráficos  -------------------------------------------------------

#'Olhar para a distribuição dos dados é essencial
#'as distribuições de frequência são úteis porque ajudam 
#'a visualizar o centro e a distribuição dos dados

#' Tipos de gráficos: barras, histogramas, densidade, dispersão, box-plot 
#' setores

## Exemplo 1: barras ------------

curso_sexo = read.csv("dados/tab_sexo_curso.csv")
head(curso_sexo)

tab1 = table(curso_sexo)
barplot(tab1)# básico

#' Podemos configurar a figura
#' para mais detyalhes de configurações use
#' ?barplot

barplot(tab1, 
        ylab = "Frequência", 
        xlab = "sexo",
        col = c("black","red"))

#' podemos utilizar o piper:

require(tidyr) # carregando o pacote

table(curso_sexo$sexo) %>% 
  barplot()

## Exemplo 2: barras ---------

# Quantidades de dentes cariados em 20 crianças

dentes_carie = readRDS("dados/criancas_carie.rds")

head(dentes_carie)

#' a primeira criança teve 3 dentes cariados
#' a segunda criança teve 4 dentes cariados 
#' a terceira criança teve 1 dente cariado

tab = table (dentes_carie$qtd_dentes_carie)
tab

#' Três crianças tiveram 1 dente cariado
#' Duas crianças tiveram 2 dentes cariados
#' Três crianças tiveram 3 dentes cariados

table(dentes_carie$qtd_dentes_carie) %>% barplot()


## Exemplo 3: setores ---------

tabela_abs = table(curso_sexo$curso)
pie(tabela_abs)

tabela_prop = prop.table(tabela_abs)*100
nomes = names(tabela_prop)

legenda = paste(nomes,"-",tabela_prop,"%")
pie(tabela_prop,labels = legenda,col=c("lightblue","lightgreen"))

legenda_2 = paste(tabela_prop,"%",sep = "")
pie(tabela_abs,labels = legenda_2,col=c("lightblue","lightgreen"))
legend("topleft",legend = nomes,
       fill=c("lightblue","lightgreen"))

#install.packages("plotrix")# para gráficos 3d

plotrix::pie3D(tabela_prop)
plotrix::pie3D(tabela_prop,theta = 0.95,labels = legenda,
               col=c("lightblue","lightgreen"))
legend("top",legend = nomes,
       fill=c("lightblue","lightgreen"),border = "blue")


## Exemplo 4: histogramas -----

peso = read.table("dados/peso_criancas.txt")
hist_peso = hist(peso$x)
hist_peso
hist(peso$x,probability = T)

#' colocar gráfico lado a lado

par(mfrow=c(1,2))
hist(peso$x)
hist(peso$x,probability = T)

## Exemplo 5: gráfico de linhas -------------

temp = read.table("dados/temperatura.txt")
plot(temp$temperatura,type="o")
plot.ts(temp,type="o")


## Exemplo 4: dispersão --------

tempo_exer = readRDS('dados/tempo_exercicio_perda_peso.rds')

head(tempo_exer)
plot(tempo_exer)

cov(tempo_exer)
cor(tempo_exer)

## Exemplo 5: boxplot --------

peso = read.table("dados/peso_criancas.txt")

box_peso = boxplot(peso)
box_tempo_exer = boxplot(tempo_exer)



