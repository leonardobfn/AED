# Tabelas de frequência ----------------

## Exemplo 1 uma variávei categórica -------------

#' Considere os dados a seguir 

#' "dados/tab_sexo_curso.csv" é o caminho dos dados (diretório)

dados = read.csv("dados/tab_sexo_curso.csv") # carregando os dados no formato csv

#' Caso tenha problema com acentuação de palavras, usar as seguintes alternativas

#dados = read.csv("dados/tab_sexo_curso.csv",encoding = "ISO-859-1") # carregando os dados no formato csv
#dados = read.csv("dados/tab_sexo_curso.csv",encoding = "UTF-8") # carregando os dados no formato csv

head(dados) # visualizando as seis primeiras observações

curso <- dados$curso # selecionando apenas a coluna curso

tab1 = table(curso)
addmargins(tab1)

tab2 = prop.table(tab1)
addmargins(tab2)


## Exemplo 2 duas variáveis categóricas -------------

head(dados) # visualizando as seis primeiras observações

# Forma 1

tab1 = table(dados) # tabela de freq absoluta 
print(tab1)

tab2 = addmargins(tab1) # adicionando as marginais
print(tab2)

tab3 = prop.table(tab1) # tabela de freq relativa
print(tab3)

tab4 = addmargins(tab3) # adicionando as marginais
print(tab4)

# calculando a porcentagem em relação a linha/coluna

install.packages("RcmdrMisc")

RcmdrMisc::colPercents(tab3,digits = 1) # coluna
RcmdrMisc::rowPercents(tab1,digits = 1) # linhas


# Nota importante -----------

#' podemos fazer os procedimentos acima utilizando " %>% " piper
#' diminui a quantidade de linhas de cód

# install.packages("tidyr") # instalar o pacote para usar %>%
require(tidyr) # carregar as funções do pacote

curso <- dados$curso # selecionando apenas a coluna curso

tab1 = table(curso) %>% addmargins()
tab2 = prop.table(tab1) %>% addmargins()

