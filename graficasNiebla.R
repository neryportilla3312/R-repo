

#vector de meses 
meses <- c('01','02','03','04','05','06','07','08','09','10','11','12')

# se crea el vector de niebla 
niebla <- c(14.45, 11.45, 12.36, 9.8, 
            9.36, 10.63, 12, 11.27, 
            14.45, 17.27, 17.54, 15.36)

plot(meses, niebla, type = "s", col="coral")

plot(meses, niebla, type = "b", col="darkorchid3")

plot(meses, niebla, type = "l", lwd = 2, lty = 1, main = "lty = 1", col="brown2")

plot(meses, niebla, type = "l", lwd = 2, lty = 3, main = "lty = 3", col="chartreuse2")

plot(meses, niebla, type = "l", lwd = 2, lty = 4, main = "lty = 4", col="chocolate")


plot(meses, niebla, type = "l", lwd = 2, lty = 4, main = "lty = 4", col="red")