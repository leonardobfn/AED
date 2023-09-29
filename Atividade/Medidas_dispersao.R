## Exercícios --------------

#' Considere os dados de temperatura a seguir

#' Nota: dados/temperatura.txt é o caminho dos dados no pc (diretório)

temp = read.table("dados/temperatura.txt") # carregando dados
head(temp) # visualizando as seis primeiras observações 

#' Nota: você pode mudar o nome da coluna da seguinte forma:

colnames(temp) = c("Temperatura")
head(temp)

#' Obtenha as estatísticas descritivas  para a variável temperatura usando a função 
#' describe

#' Obtenha as estatísticas descritivas  para a variável temperatura usando as funções 
#' apresentadas no exemplo 1

#' Nota: observe que os dados estão organizados no formato de tabela (data.frame)
#' Nesse caso, não podemos aplicar diretamente a função sd, por exemplo

sd(temp) # o resultado é um erro

#' Nesse caso, temos que selecionar a coluna da tabela através de "$"

sd(temp$Temperatura)




