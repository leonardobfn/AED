# Vetores atômicos e listas --------

#'Vetores são estruturas muito importantes dentro R

#'Vetores no R são conjuntos indexados de valores

#'Os vetores podem ser de dois tipos: vetores atômicos e listas

#' Principal diferença: 
#' Para vetores atômicos, todos os elementos devem ter o mesmo tipo,
#' para listas, os elementos podem ter tipos diferentes.


## Vetores atômicos ---------


#'Existem quatro tipos principais de vetores atômicos: 
#'lógico, inteiro, double e caractere.


### Lógico -----
lgl_var <- c(TRUE, FALSE)# lógico
lgl_var <- c(T, F)# lógico
typeof(lgl_var)# verificar o tipo
is.logical(lgl_var) # testar se o vetor é do tipo lógico
is.integer(lgl_var)

### Double -----
dbl_var <- c(1, 2.5, 4.5)#forma decimal
dbl_var <- c(1.23e4)##forma científica
typeof(dbl_var)
is.double(dbl_var) # testar se o vetor é do tipo Double
is.character(lgl_var)

#'Existem três valores especiais exclusivos para Double: 
#'Inf, -Inf e NaN (Not a Number)

dbl_var <- c(Inf,-Inf,NaN)
typeof(dbl_var)

### Inteiro -----
#' Os inteiros são escritos de forma semelhante aos Double, 
#' mas devem ser seguidos por L

int_var <- c(1L, 6L, 10L)# inteiro
typeof(int_var)
is.integer(int_var)
is.character(int_var)
### caractere (string) -----
#' As strings são colocados entre " "

chr_var <- c("Leonardo", "Nascimento")
chr_var <- c("Ótimo", "Bom","Ruim")
chr_var <- c("Masculino", "Feminino")
is.character(chr_var)
typeof(chr_var)

### NULL -----

#' Embora não seja um vetor, NULL está intimamente relacionado aos
#' vetores e geralmente desempenha a função de um vetor 
#' genérico de comprimento zero

vetor_null <- c(NULL)
vetor_null
typeof(vetor_null)

### Valores faltantes -----

#' R representa valores ausentes ou desconhecidos, com valor especial: 
#' NA ("Not Avaible")

x1 <- c(1,2,3,4) # vetor sem NA
x2 <- c(1,NA,3,4) # vetor sem NA

is.na(x1) # testar a presença de NA
is.na(x2)

### Coerção -----------

#' Para vetores atômicos, o tipo é uma propriedade de todo o vetor: 
#' todos os elementos devem ser do mesmo tipo. 
#' Quando você tenta combinar tipos diferentes, eles serão forçados em uma ordem fixa: 
#' caractere → double → inteiro → lógico.

y1 <- c(1L,"leonardo") # inteiro, character
y1
typeof(y1)

y2 <- c(5.5,10L) # double, inteiro
y2
typeof(y2)


