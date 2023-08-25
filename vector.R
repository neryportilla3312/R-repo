#25 de agosto del 2023


#se crea el vector 
fuma <- c('frecuente', 'nunca', 'a veces', 
          'a veces', 'a veces', 'nunca', 'frecuente',
          NA, 'frecuente', NA, 'hola', 'nunca', 'hola', 
          'frecuente','nunca')

table(fuma)

# NA representar datos perdidos 
# NULL representa la ausencia de datos 


#contar los NA
table(fuma, useNA = 'always')

#excluir datos 
table(fuma, exclude=c ('hola'))






