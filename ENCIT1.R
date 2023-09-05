#¿Por qué R?
#1. R es un software libre y gratuito

#2. Es multiplataforma: está disponible para Windows, Macintosh y GNU/Linux.

#3. R es un lenguaje de programación y un entorno para el análisis estadístico y gráfico (Acceder, manipular, analizar y presentar datos)

#4. R ES FACIL
#- R ES UN LENGUAJE! HAY QUE ESTARLO USANDO CONSTANTEMENTE
#- IDENTIFICAR PASOS Y EJECUTARLOS UNO A UNO
#- PASOS BASICOS

#5. R es ampliamente extensible mediante funciones y paquetes. Es un proyecto colaborativo y abierto. Sus usuarios pueden publicar paquetes que extienden su configuración básica. 

#6. R tiene una amplia red de soporte con numerosos documentos gratuitos y ayuda online

#7. Facilita la reproducción de análisis/investigaciones al compartir scripts

#Ayuda de diferentes formas

#Iniciemos..
#R studio: Interfaz más amigable de R // Partes de Rstudio: Script, Consola, Environment y ventana de Files/Gráficos/Paquetes/Ayuda
# R SIEMPRE TIENE LA RAZON (puntos, comas, mayúsculas, paréntesis)
#Para correr comandos (instrucciones) de un script: ctrl+enter (windows), cmd+enter (mac)

####1. Checar si el environment está vacío
rm(list=ls(all=TRUE)) ##rm=remove
ls()
#2.Para buscar en donde estoy (directorio de trabajo (working directory): donde R va a buscar los archivos y en donde se va a guardar todo lo que haga)
getwd()
##Para definir un directorio de trabajo diferente. Esto hace que todo lo que haga lo guarde en el subdirectorio
setwd("C:/Users/tania/Documents/ENCIT")
#IMPORTANTE: Importan las mayúsculas/minúsculas, fijarse bien


#PAQUETES: Contienen todas las funciones que necesitan para ciertos análisis, a veces tmb contienen datos
#Para instalar un paquete
install.packages(("ggplot2"))#Un unico paquete
install.packages(c("activity","sf", "maptools")) #Varios paquetes 
#No basta con instalarlo, hay q cargarlo (ésto se hace cada q abran sesión)
library(ggplot2)

#Actualiza tu paquete
old.packages() #Conocer paquetes que necesitan actualizacion
update.packages() #Actualizar todos los paquetes

#Conoce tu paquete
help.search("ggplot2") #Abre una pestaña de ayuda
??ggplot2 #Abre una pestaña de ayuda

#TIP: TABULADOR…. TE DESPLIEGA TODAS LAS POSIBILIDADES

#R funciona como una calculadora
#Asignaciones (variables o funciones) a un objeto, puede ser con <- -> o =
a<-1
b<-2

a+b
a/b
(2*a)/b

#### Cuidado, no hay *undo* en R.
x <- 4
x <- 1

#El nuevo valor de x será 1
x

#3.Cargar base de datos
#Guardar base de datos en excel como .csv
#Para escoger archivo del subdirectorio
list.files()
#si recuedas donde está y cómo se llama
air<-read.csv("~/Documents/ENCIT/airquality.csv")
#Buscar archivo si no recordamos en q directorio está 
air<-read.csv(file.choose(),h=T)

#IMPORTANTE: NUNCA NOMBREN UN ARCHIVO CON ACENTOS, CARACTERES ESPECIALES O CON ESPACIOS (informativo y corto)
#vista datos
head(air)
head(air,n=2)
tail(air)
#str=estructura de data
str(air)

###MEDIA, MODA, MEDIANA
#Media: promedio o suma de todos los elementos divididos entre el total de la muestra (promedio de todos los elementos)
#Valor de n o cantidad de elementos en los datos con la función lenght
n<-length(air$)
#Media Aritméticamente: Función sum() suma aritméticamente todos los elementos de la muestra y round() redondea el resultado a ciertas posiciones decimales
sum(air$)/n
#Función mean()
mean(air$)
round(mean(air$),2)

#Median:Refleja la tendencia central de la muestra, de manera que no esté influído por los valores extremos
#Impar: se toma el dato a la mitad
#Par: promedio de los dos números que están a la mitad de los datos ya ordenados
#Mediana matemáticamente, primero determinar si n es número par o impar
datos.ordenados<-air$ [order(air$)]
datos.ordenados
if(n.par=='impar'){ 
  mediana<-(datos.ordenados[(n+1)/2])
}else{
 mediana<-1/2*(datos.ordenados[n/2]+datos.ordenados[n/2+1])
}
mediana
#Funcion median()
mediana<-median(air$)
mediana

#Moda…valor que se presenta con mayor frecuencia en los datos
#función table()para encontrar las frecuencias, posteriormente se ordena la tabla descendente y el valor del conjunto de datos de frecuencias de la primera posición será la moda
frecuencias<-table(air$)
frecuencias.ordenada<-frecuencias[order(frecuencias, decreasing = TRUE)]
frecuencias.ordenada
moda<-frecuencias.ordenada[1]
moda
#Paquete modeest
install.packages("modeest")
library(modeest)
moda<-mfv(air$)
moda

#Parte Gerardo
#Objetos: Todo es un objeto
#Tipos de datos
#Enteros (Integer) y numéricos(Numeric), lógicos(logical[true/false]), cadena de texto (character), datos perdidos (NA) y vacíos (NULL)
#¿Cómo convertir un tipo de datos?
as.numeric()#etc

#¿Cómo se organizan los datos?
#vectores(estr. más sencilla,datos de una sola clase), matrices, data frames y listas

#Ejemplo de paquete 
#Si no los tienes instalado corre las siguiente dos lineas primero

install.packages("devtools")
devtools::install_github("sctyner/memer")

#Si ya lo tines, desde este punto: 
library(memer) #Cargar el paquete

#crear un meme 
meme_get("DistractedBf") %>% 
  meme_text_distbf("tidyverse", "Aprendiendo R", 
                   "R base")

meme_get("Spongebob")

#Vectores ----
1:10
#los dos puntos (:) se usan para indicar una secuencia num?rica en este caso del 1 al 10
x<-1:10 #esta secuencia se guarda con un nombre, el que sea, en este caso se llama x
#la funcion class() indica el tipo de estructura o tipo de datos que tiene un objeto
class(x)

#Operaciones de vectores
a<-c(3,3,3)
b<-c(1,2,3)
c<-3
a+b
c+b

LETTERS #este es un vector que esta por default en R. 
#son las letras del abecedario en mayusculas
y<-LETTERS #podemos guardar este vector con otro nombre, en este caso y
class(y)
y[1]#podemos extraer elementos de ese vector con los corchetes
y[20]

#Ejercicio de extraer elementos de Letters--->nombres
y[c(7,12,1,4,25,19)]

x>2 #estamos pidiendo que evalue si cada elemento de x es mayor a 2
condicion<-x>2 #creamos un objeto con esta condici?n
condicion2<-x==5

