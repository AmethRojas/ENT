
hipotenusa <- sqrt(3**2 + 6**2)

imc <- 83/(1.85**2)

hipotenusa + imc

# EJERCICIO N°1

celcius<- 30
farenheit <- (celcius*9/5) + 32
farenheit

# TIPO DE DATO : NUMERIC

positivo <-  20

#operaciones basicas
positivo + 10
positivo - 10
positivo / 10
positivo ** 3

#modulo
positivo %% 5
positivo %% 6
positivo %% 7

#enteros negativos
negativo <- -15
negativo * -1
negativo ** 2

#con decimales
decimal <- 2.71828
ceiling(decimal)
floor(decimal)
trunc (decimal)

# EJERCICIO N°2
numero <- 2.71828

trunc(numero*100)/100

signif(numero, digits = 3)

# TIPO DE DATO : STRING
usuario <- "AmethRojas"

#cuantos caracteres tiene el nombre de usuario
nchar_usuario <- nchar(usuario)

#para comvertir todo el string a minusculas o mayusculas
tolower(usuario)
#"amethrojas"
toupper(usuario)
#"AMETHROJAS"

#obtener un pedazo (substring) del string
substr(usuario, 1,5)
#"Ameth"
substr(usuario, 6,10)
#"Rojas"

#sutituir valos del string
sub("e", "E", usuario)
#"AmEthRojas"
gsub("a", "A", usuario)
#"AmethRojAs"
sub("Ameth","Giomar",usuario)
#"GiomarRojas"

#pegar (concatenar) 2 o mas strings
paste("Mi nombre es league of legends es:",
      usuario,
      sep=" ")

# EJERCIO N°3
madmen <- "Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper"

madmen_mod <- sub("Don Draper", "Richard Withman", madmen)

paste("En la serie Madmen:",
      madmen_mod,
      sep=" ")

# TIPO DE DATO : LOGICAL

#posibles valores logicos
TRUE
FALSE

#nuestra calificaion en el primer examen
calificacion_examen1 <- 8.5

#obtuvimos 10?
calificacion_examen1 ==10
#FALSE

#aprobamos?
calificacion_examen1 >= 6
#TRUE

#obtuvimos calificacion > 6 Y < 8
calificacion_examen1 >6 & calificacion_examen1 < 8
#FALSE
calificacion_examen1 >6 & calificacion_examen1 < 9
#TRUE

#realizamos un segundo examen
calificaion_examen2 <- 5.9

#tenemos algun examen reprobado?
calificacion_examen1 < 6 | calificaion_examen2 < 6
#Regresa TRUE si algana de las condiciones es verdadera
#Regresa FALSE caso contrario

#validar la no igualdad
calificacion_examen1 != calificaion_examen2

#nombre de usuario en league of legends
usuario <- "AmethoGioma"

#validar igualdad
usuario == "Faker"

#Validar el buneri de catacteres
val_numchar <- nchar(usuario) > 10

#validar que no contenga una palabra en particular
val_noob <- grepl("Noob",usuario)

#validar que no comience con .
val_punto <- substr(usuario,1,1) != "."
val_punto

#validar que cumpla con las tres condiciones anteriores
val_numchar & val_noob & val_punto

#sumando valores logicos
TRUE == 1
FALSE == 0
TRUE + TRUE + FALSE + FALSE + TRUE

# EJERCICIO N°3
(TRUE & TRUE) | (FALSE & FALSE)

usuario <-  "RIOT Mitclan"

nchar(usuario) < 10 & !grepl("RIOT",usuario) &
  usuario != "ElVaipa" & usuario != "Ixtli"

# TIPO DE DATO : VECTOR

#vector numérico
vistas <- c(8321, 2974, 5792, 4932, 4889, 7433, 6651)

#vector de caracteres
nombres <- c("Video 1", "Video 2", "Video 3", "Video 4",
             "Video 5", "Video 6", "Video 7")

#operaciones basicas
#Cuantos videos hay?
length(vistas)
#7

#cuantas vistas tiene el video mas visto?
max(vistas)
#8321

#cuantas vistas tiene el video menos visto?
min(vistas)
#2974

#cuantas vistas en promedio tienen los videos en el canal?
mean(vistas)
#5856

#en total, cuantas vistas tiene el canal?
sum(vistas)
#40992

#operaciones aplicadas al vector
vistas + 1000 #suma mil a cada entrada del vector
vistas / 500
log(vistas)
nchar(nombres)
#esto solo aplica al lenguaje R ya que en otros lenguajes
#de progrmacion se trendria que realizar un cliclo

#subimos un nuevo video al canal
vistas<- c(vistas, 5000)
nombres <- c(nombres, "Video 8")

#ponerle nombres a las entradas de un vector
names(vistas) <- nombres

#ordenar el vector numerico
sort(vistas) #ordena de menor a mayor
?sort
sort(vistas, decreasing = TRUE)  #ordena de mayor a menor

#condiciones logicos sobre vectores
#que videos tienen mas de 6000 vistas?
vistas > 6000

#cuantos tienen mas de 6000 vistas?
sum(vistas > 6000)

#algun video tiene mas de 8000 vistas?
any(vistas > 8000)
any(vistas >10000)  #se lee: no hay ningun video con mas de 10000 vistas

#todos los videos tienen mas de 2000 vistas?
all(vistas > 2000)
all(vistas > 5000)

#que videos tienen menos de 5000 vistas
which(vistas < 5000)
#regresa  las posiciones en las que hay un TRUE

#como obtener un subconjunto de un vector?
#especificando cuales quiero (enteros positivos)
vistas[c(2,4)]
vistas[3]

#especificando cuales no quiero (enteros negativos)
vistas[-4] #te da todos los valores menos el especificado con negativo
vistas[-c(1,2)]

#especificando cuales quiero (valores lógicos)
vistas[c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE)]
vistas[vistas > 7000]
vistas[vistas > 4000 & vistas < 5000]

#mediante el nombre de la entrada
vistas[c("Video 2", "Video 3")]

#como modificar un vector ya definido
vistas[1] <- 500
vistas[c(2,3,4)] <- c(600,700,800)
vistas[vistas > 7000] = 7000

# Utizando vectores como conjuntos
#videojugos de un amigo y yo
yo <- c("GTA V", "Mortal Combat", "Zelda", "Skyrim")
amigo <- c("Mario Kart", "Zelda", "Devil May Cry", "GTA V")

#que videojuegos tenemos entre los dos?
c(yo, amigo)     #los une y conserva los repetidos
union(yo, amigo)    #los une pero ya no hay repeticiones

#que videojuegos tenemos en comun?
intersect(yo, amigo)  #solo da los videojuegos en comun

#que video juegos tengo yo que no tenga el?
setdiff(yo, amigo)

#tenemos los mismos videojuegos?
setequal(yo,amigo)

#mi amigo tiene el video juego de zelda?
"Zelda" %in% amigo

#mi amigo tiene los videojuegos de Age of Empires o Mario Kart?
c("Age of Empires","Mario Kart") %in% amigo

# Otra manera de generar vectores (deterministas)
#utlizando el operador :
1:50
20:1
-5:5

#utilizando la funcion seq
seq(from = 0, to = 50, by = 10)
seq(from = 10, to = 100, by = 10 )

#apartir de un caracter
juego <- "Mortal Kombat"

split <- strsplit(juego, " ")

strsplit(juego, " ")[[1]]

#otra manera de generar vectores(aleatorio)
#obteniendo muestras
resultados <- c("victoria", "derrota")
sample(resultados, size = 2)
sample(resultados, size = 10, replace = TRUE)
sample(resultados, size = 10, replace = TRUE, prob = c(0.3, 0.7))

#distribucion de probabilidad
runif(n = 20, min = 0, max = 2)    #distribucion uniforme continua
rnorm(n = 20, mean= 15, sd = 2)    #distribucion normal
rbinom(n = 20, size = 1, p = 0.5)  #distribuion bernuli
rbinom(n = 20, size = 5, p = 0.5)  #distribucion binomial

#fijando la semilla
set.seed(123)
runif(n = 1)

#vectores a partir de diferentes tipos de datos?
ejemplo <- c(3.1415, TRUE, "God of War")

# EJERCICIO N°1
numeros <- 1:1000000
sum(numeros %% 6 == 0 & numeros %% 8 ==0)  #41666

set.seed(123)
compras <- rnorm(n = 10000, mean = 5000, sd = 1000)

#¿Cuales son los montos de las compras en las entradas 435 y 678?
compras[c(435, 678)]

#¿Cuantas compras fueron mayores a 8000 dolares?
sum(compras > 8000)

#¿Cuales fueron el monto maximo y minimo?
min(compras)
max(compras)

#¿Que porcentaje de compras fueron entre 4000 y 6000?
sum(compras >= 4000 & compras <=6000)/length(compras)

# EJERCICIO N°2
usuario = "NoobSlayer9"

#genere un codigo que regrese TRUE si usuario contiene al menos un numero
any(strsplit(usuario, split = "")[[1]] %in% 0:9)

#genere un codigo que regrese TRUE si usuario contien solamente numeros
all(strsplit(usuario, split = "")[[1]] %in% 0:9)

#-----------------------------------------
  #CONVERSION
#------------------------------------------

#de numerico a caracter o logico

#de numerico a caracter
as.character(5.6)
as.character(-5.8)

#de numerico a logico
as.logical(1)   #TRUE
as.logical(0)   #FALSE

#de logico a caracter o numerico

#de logico a caracter
as.character(TRUE)
as.character(FALSE)

#de logico a numerico
as.numeric(TRUE)
as.numeric(FALSE)

#de caracter a logico o numerico

#de caracter a numerico
as.numeric("244")  #244
as.numeric("matematica")  #NA

#de caracter a logico
as.logical("TRUE")
as.logical("matematica")   #NA

#En un vector
vec <- c("1", "2", "3", "4")
as.numeric(vec)

# FUNCIONES

#un primer condicional
condicion <- TRUE
if(condicion){
  print("Esto se imprimira si la condicion es TRUE")
}

condicion <- TRUE
if(condicion){
  print("Esto se imprimira si la condicion es TRUE")
}else{
  print("Esto se imprimira si la condicion es FALSE")
}

#calculando el rango de un ajedresista
elo <- 500
if(elo >= 750){
  rango <- "Gran Maestro"
}else if(elo >= 500){
  rango <- "Maestro"
}else if(elo >= 250){
  rango <- "Profesional"
}else{
  rango <- "Novato"
}

#if else
numeros <- 1:10
ifelse(numeros %% 2 == 0, "par","impar")

#------------------------
# FUNCIONES
#------------------------

#funcion que eleve un numero al cuadrado
cuadrado <- function(num){
  return(num**2)
}

cuadrado(2)
cuadrado(10)

#funcion que eleve un numero a un exponente
exponente <- function(num,k){
  return(num**k)
}

exponente(3,3)
exponente(12,8)

#funcion que convierta de celcius a fahrenheit
celcius_a_fahrenheit <- function(temp){
  farenheit <- temp*9/5 + 32
  return(farenheit)
}

celcius_a_fahrenheit(temp = 25)
celcius_a_fahrenheit(temp = 10)

#funcion que verifique la validez de un usuario
usuario_valido <- function(nombre){
  
  val_longitud <- nchar(nombre) < 10
  val_riot <- !grepl("RIOT", nombre)
  val_ocupados <- !nombre %in% c("ElVaipa","Ixtli")
  
  validacion <- val_longitud & val_riot & val_ocupados
  return(validacion)
  
}

usuario_valido(nombre = "Miceuntaspro")
usuario_valido(nombre = "Ameth")

#manejo de un semaforo
actualiza_semaforo <- function(actual){
  
  if(actual == "verde"){
    siguiente <- "amarillo"
  }else if(actual == "amarillo"){
    siguiente <- "rojo"
  }else if(actual == "rojo"){
    siguiente <- "verde"
  }else{
    stop("Color no valido")
  }
  
  return(siguiente)
  
} 

actualiza_semaforo(actual = "verde")
actualiza_semaforo(actual =  "amarillo")
actualiza_semaforo(actual = "rojo")
actualiza_semaforo(actual = "morado")

#------------------------------
#     CUENTA VOCALES
#------------------------------

#string de pueba
string <- "indie"

#separando el string en un vector
letras <- strsplit(string,split = "")[[1]]

#vocales
vocales <- c("a", "e", "i", "o", "u")

#realizamos el conteo
sum(letras %in% vocales)

#funcion
cuenta_vocales <- function(string){
  
  #separando el string en un vector
  letras <- strsplit(string,split = "")[[1]]
  letras <- tolower(letras)
  
  #vocales
  vocales <- c("a", "e", "i", "o", "u")
  
  #realizamos el conteo
  sum(letras %in% vocales)
  
}

#aplicacion
cuenta_vocales("Machine Learning")
cuenta_vocales("PROGRAMACION")
cuenta_vocales("que le paso a lupita")
  

#EJERCICIO: linea y dada
mueve_punto <- function(inicial){
  
  # Se tiran los dados
  dado1 <- sample(1:6, size = 1)
  dado2 <- sample(1:6, size = 1)
  
  # Posicion final
  final <- inicial + 2*dado1 - dado2
  
  paste0("Posicion inicial: ",inicial,", Posicion final: ",
         final)
  
}


mueve_punto(inicial = 10)
mueve_punto(inicial = 7)

#EJERCICIO SIGLO
siglo <- function(year){
  ceiling(year/100)
}

siglo(1567)
siglo(2021)

#EJERCICIO STANDON
#algunas pruebas
set.seed(1341)
muestra <- sample(1:7, size = 20, replace = TRUE)

#numero de 1
n <- sum(muestra == 1)

#stanton
sum(muestra == n)

#funcion
stanton_measure <- function(muestra){
  n <- sum(muestra == 1)
  sum(muestra == n)
}

stanton_measure(c(1,2,5,1,7))

#-----------------
#     CICLOS
#-----------------
#ciclo for
for(i in 1:10){
  texto <- paste0("Iteracion: ",i)
  print(texto)
}

for(i in letters){
  print(i)
}

#ciclo while
numero <- 5
while(numero <= 10){
  print("Aquí seguimos")
  numero <- numero + 1
}

#-----------------------
#         LISTAS
#----------------------
#que resuelve un lista
c(3.1416,TRUE,"God of War")
lista <- list(3.1416,TRUE,"God of War")

#Asignando nombre a las entradas
lista_nombrada <- list(numero = 3.1416,
                       logico = TRUE,
                       caracteer = "God of War")

#obteniendo entradas de una lista
lista[1]    #manera incorrecta
lista[[1]]  #manera correcta para listas
lista[[1]]*2
lista_nombrada$numero    #esto se usa si la entrada tiene nombre

#agregando estradas a una lista
#usando $
lista_nombrada$vector <- c(1,2,3)

#por posicion
lista[[4]] <- c(1,2,3)
lista

# TIPOS DE DATOS: DATA FRAMES
#como definir un dateframe
series <- data.frame(
  nombre = c("Braking Bad", "Mad Men", "The Office", "Invicible", "Seinfeld"),
  imdb = c(9.4, 8.6, 8.9, 8.7, 8.8),
  episodios = c(62, 92, 188, 13, 173),
  concluida = c(TRUE, TRUE, TRUE, FALSE, FALSE)
)

#exportacion a csv
write.csv(series,
          file = "C:\Users\LABORATORIO 2\Documents",
          row.names = FALSE)

#operaciones basicas con dataframe
#caracteristicas del dataframe
View(series)
nrow(series)  #filas
ncol(series)  #columnas
str(series)
summary(series)

#agregar nueva informacion(columna)
series$metascore <- c(8.7,8.6,6.6,NA,8.4,8.7)
series$promedio <- c(series$imdb + series$metascore)/2

#agregar nueva informacion(fila)
band_of_brothers <- data.frame(nombre = "Band of Brothers",
                               imdb = 9.4,
                               episodios = 10,
                               concluida = TRUE)

series <- rbind(series, band_of_brothers)

#extrayendo informacion
#extrater por nombre o posicion
series$nombre
series[1,]
series[1,1:2]
series[1,c("nombre","imdb","metascore")]
series[1:3,c("nombre","imdb","metascore")]
series[c(1,3,5),c("nombre","imdb","metascore")]

#extraer filas por condicion
series[c(TRUE,FALSE,FALSE,FALSE,FALSE,TRUE) ,]
series[series$imdb >= 9,]
series[series$episodios < 50, ]
series[!series$concluida, ]

#explorando informacion
videogames <- read.csv("C:/Users/LABORATORIO 2/Downloads/all_games.csv")
nrow(videogames)
ncol(videogames)

#un vistazo a los datos
head(videogames,10)
View(head(videogames,10))
str(videogames, strict.width = "cut")

#valores faltantes
is.na(videogames)
colSums(is.na(videogames))

#cual es el juego con menor meta_score?
videogames$meta_score
which.min(videogames$meta_score)
videogames[18799,]
View(videogames[18799,])

#cual es el juego con mayor meta_score?
videogames$meta_score
which.max(videogames$meta_score)
View(videogames[1, ])

#cuantos juegos hay en cada plataforma
videogames$platform
videogames$platform <- trimws(videogames$platform)   #triwms para quitar el espacio del comienzo de la columna
table(videogames$platform)   #para ver las consolas sin repertir
sort(table(videogames$platform), decreasing = TRUE)

#cuantos juegos de pc tienen meta_score mayor a 80
nrow(videogames[videogames$platform == "PC" &
          videogames$meta_score > 80,])

#EJERCIO
#cuantos juegos hay en GameCube o de PSP?
nrow(videogames[videogames$platform %in% c("GameCube","PSP"),
                ])
#cuantos juegos hay de Swtich que tengan meta_score entre 50 y 70 (ambos inclusivos)?
nrow(videogames[videogames$platform == "Switch"&
                videogames$meta_score <= 70 &
                videogames$meta_score >= 50, ])

#Haciendo un histograma
hist(videogames$meta_score,
     breaks = 40,
     col = "blue",
     xlab = "Meta Score",
     main = "Histograma del MetaScore")

#breaks para el ancho de las columnas
#col para el color de las columnas
#xlab para cambiar el titulo del eje x
#main para cambiar el titulo del grafico

#scatterplot
n64 <- videogames[videogames$platform == "Nintendo 64", ]

plot(n64$meta_score,
     n64$user_review,
     col = "red",
     pch = 19,
     lwd = 5,
     xlab = "MetaSacore",
     ylab = "User review",
     main = "Comparacion Metascore y User review para N64",
     frame = FALSE)

#pch modifica el tipo de punto
#lwd modifica el tamaño del punto
#ylab edita el titulo del eje y
#frame elimina el cuadro alrededor del gráfico

#boxplot
boxplot(videogames$meta_score)

#boxplot por plataformas
boxplot(meta_score ~ platform,
        data = videogames,
        col = "purple",
        subset = platform %in% c("PSP","Nintendo 64", "PC",
                                 "Switch","PlayStation 4"),
        xlab = "",
        ylab = "Metascore",
        frame = FALSE)

#subset para especificar que plataformas deseo ver

#LIBRERIAS
#para manejar strings("stringr")

#instalando la libreria
install.packages("stringr")

#cargando la libreria
library(stringr)

#comas que tiene un string
sum(strsplit("Primero,Segundo,Tercero","")[[1]] == ",")

#utilizando string
str_count(string = "Primero,Segundo,Tercero",pattern  = ",")


# TIDYVERSE
install.packages("tidyverse")

library(tidyverse)

#pipe (%>%)
 
#Cuantos juegos hay de GameCube?
nrow(filter(videogames,platform == "GameCube"))

#usandp pipe ( %>% )
videogames %>% 
  filter(platform == "GameCube") %>% 
  nrow()

#cunatos juegos tienen metascore entre 70 y 80?
videogames %>% 
  filter(meta_score >= 70 & meta_score <= 80) %>% 
  nrow()

#cuentas palabras tiene un string
string <- "Devil May Cry"

string %>% 
  strsplit(" ") %>% 
  unlist() %>% 
  length()

#------ TIBBLE
series <- tibble(
  nombre = c("Braking Bad", "Mad Men", "The Office", "Invicible", "Seinfeld"),
  imdb = c(9.4, 8.6, 8.9, 8.7, 8.8),
  episodios = c(62, 92, 188, 13, 173),
  concluida = c(TRUE, TRUE, TRUE, FALSE, FALSE)
)

#convertir un dataframe a tibble
videogames <- as.tibble(videogames)

#definirlo fila por fila
tribble(
  ~nombre,~imdb,~episodios,~concluida,
  "Arcane",9.4,10,FALSE,
  "Mad Men",8.6,92,TRUE,
  "The Office",8.9,188,TRUE
)

#leer un archivo csv a tibble (readr)
videogames <- read_csv("C:/Users/LABORATORIO 2/Downloads/all_games.csv")

#-------DPLYR
#operaciones basicas

#filter
zelda_filter <- videogames %>% 
  filter(str_detect(name,"Zelda"))

#select
zelda_select <- zelda_filter %>% 
  select(name,platform,meta_score,release_date)

#mutate
zelda_mutate <- zelda_select %>% 
  mutate(new_var = case_when(
    meta_score >= 90 ~ "Excelente",
    meta_score >= 80 ~ "Bueno",
    TRUE~"Regular"
  ),
  relase_year = as.numeric(str_sub(release_date,
                        str_length(release_date) - 3,
                        str_length(release_date)))
  )

#arrange
zelda_mutate %>% 
  arrange(desc(release_year))

















