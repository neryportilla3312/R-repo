
# inicializando datos 

# se crea el vector de niebla 
niebla <- c(14.45, 11.45, 12.36, 9.8, 9.36, 10.63, 12, 11.27, 14.45, 17.27, 17.54, 15.36)

# se crea el vector de meses 
meses <- c('01','02','03','04','05','06','07','08','09','10','11','12')

plot(x = meses, y = niebla)

# editando gráfica 
plot(x = meses, y = niebla, main = 'niebla',
     
     xlab = '',
     ylab = '', 
     col = 'red', 
     pch = 16, 
     panel.first = grid())

library(ggplot2)

dias <- data.frame(meses, niebla) # grafica del vector (x,y)

ggplot(data = dias, mapping = aes(x = meses, y = niebla)) + geom_point() + labs(title = 'dias con neblina')

