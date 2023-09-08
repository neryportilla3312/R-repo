



capturas <- c(10,13,124,5,6,7,9,8,13,13,12,12,12,11,10,10,8,10,10,10,11,6,
              7,8,8,8,9,9,10,9,8,7,7,9,14,8,8,8,11,11,12,14,14,13,13,13,13,
              14,17,20,15)


# Media aritmetica 
mean(capturas)
sum(capturas/length(capturas))

#Mediana 
median(capturas)


#Moda
sort(capturas)

install.packages("modes")
library(modes)
modes(capturas)



              
             
            
