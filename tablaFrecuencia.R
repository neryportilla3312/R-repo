

fuma <- c('Frecuente', 'Nunca', 'A veces', 'A veces', 'A veces',
          'Nunca', 'Frecuente', NA, 'Frecuente', NA, 'hola', 
          'Nunca', 'Hola', 'Frecuente', 'Nunca')

table(fuma)

table(fuma, useNA='always') # para contabilizar los NA 

table(fuma, exclude=c('Hola', 'hola')) # construir la tabla sin los niveles errados 


tabla1 <- table(fuma, exclude=c('Hola', 'hola', NA))
tabla1   # construir la tabla sin los niveles errados y sin los NA 

sexo <- c('Hombre', 'Hombre', 'Hombre', NA, 'Mujer',
          'Casa', 'Mujer', 'Mujer', 'Mujer', 'Hombre', 'Mujer', 
          'Hombre', NA, 'Mujer', 'Mujer')
# forma en la que se relaciona el sexo con fumar 

table(sexo, fuma)

tabla2 <- table(sexo, fuma, exclude=c('Hola', 'hola', 'Casa', NA))
tabla2 # retirar los niveles errados 

prop.table(x=tabla1)


tabla3 <- prop.table(x=tabla2)
tabla3 # para la tabla 2 


tabla4 <- prop.table(x=tabla2, margin=2)
tabla4


addmargins(tabla3)

addmargins(tabla4, margin=1)


