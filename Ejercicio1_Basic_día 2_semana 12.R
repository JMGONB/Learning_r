#Imprimo secuencia de nums del 20 al 50
#Calculo la media del 20 al 60
#sumo los nums del 51 al 91
#creo vector con 10 valores aleatorios en un rango.


print("Basic")
print("Secuencia de números del  20 al 50")
print(seq(20,50))
print("Media de los números del 20 al 60")
print(mean(20:60))
print("Suma de los números del 51 al 91:")
print(sum(51:91))
print("Vector con 10 valores aleatorios entre -50 y 50")
v<-sample(-50:50, 10, replace=TRUE)


#Calculo de Fibinaccio 10 primeros números


print("Fibonacci 10 primeros números")

Fibonacci <- numeric(10)
Fibonacci[2] <- 1
Fibonacci[1] <- Fibonacci[2]
#Los dos primeros valores de la serie son dos unos.
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print(Fibonacci)

#Programa  que imprime los números del 1 al 100 e imprime Fizz para múltiplos de 3, imprime Buzz para múltiplos de 5 e imprime FizzBuzz para múltiplos de ambos.


for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
  }
# Me fijo en que después de la condición siempre va corchete y se cierra después de que haga lo que le decimos que haga



#Programa para extraer las primeras 10 letras en inglés en minúsculas y las últimas 10 letras en mayúsculas y extraer las letras entre la 22ª y la 24ª en mayúscula.

print("Primeras 10 letras en minuscula:")
t <- head(letters, 10)
print(t)
print("Ultimas 10 letras en mayuscula:")
t <- tail(LETTERS, 10)
print(t)
print("Letras entre la 22 y 24 en mayusculas:")
e <- (LETTERS[22:24])
print(e)



#Escribe un programa para encontrar los factores de un número dado.
#Notas: paste me concatena string con valor pasado y con string para imprimir.
#cierro con tres { los de la función el For y el IF}

factorial<-function(n) {
  print(paste("Los factoriales de",n,"son:"))
  for(i in 1:n) {
    if((n %% i) == 0) {
      print(i)
    }
  }
}
factorial(n<-12)

#Valor máximo y mínimo de un vector dado:
#Sample me genera aleatorios enteros en el rango 10 que indico.

nums<-c(sample(1:30,10,replace=F))
print(nums)
print(paste("valor máxino del vector:",max(nums)))
print(paste("valor mínimo del vector:",min(nums)))



#Función que me genera 8 números decimales en un rango aleatoriamente.

nums_dec<-c(runif(8, min=3, max=12)) 
print(nums_dec)
print(paste("valor máxino del vector:",max(nums_dec)))
print(paste("valor mínimo del vector:",min(nums_dec)))



#Crear una lista de números aleatorios en distribución normal y cuente las ocurrencias de cada valor.
#rnorm (r quiere decir random [aleatorio] y norm quiere decir normal es decir con media y desviación estándar sd).
# devuelve el entero más grande que no excede el valor especificado.
#Maximo 50 números.

lista_nums=floor(rnorm(50, 8, 40))
print(lista_nums)
ocurrenc <- table(lista_nums)
print(ocurrenc)


# Crear tres vectores con datos numéricos, datos de caracteres y datos lógicos de tres vectores. Muestra el contenido de los vectores y su tipo.

nums<-c(sample(1:30,5,replace=F))
print(nums)
class(nums)
test<-c("Andrés", "Juan","María","Araceli")
print(test)
class(test)
Bool<-c(TRUE,FALSE,TRUE,TRUE,FALSE)
print(Bool)
class(Bool)



# Crear una curva de campana de una distribución normal aleatoria.
#Crea distribución aleatoria de 10000 numeros que organizará según frecuencia.
# Media cercana a 500
# Desviación standar cercana a 100

n<-floor(rnorm(10000, 500, 100))
t<-table(n)
barplot(t)


# Crear un DataFrame que contenga detalles de 5 empleados y muestre los detalles.
# Importante para que salga oredenado primero crear vectores y luego crear data con esos vectores.


Nombres<-c(" Juan", "Pilar","Gonzalo","Javier","Monica")
Sex<-c("M","F","M","M","F")
edad<-c(37,24,21,43,36)
cargo<-c("Administrativo","Marketing","CEO","Comercial","Administrativo")
Empleados<- data.frame(Nombres,Sex,edad,cargo)
print("Información básica de empleados")
print(Empleados)



#Mostrar resumen de los datos de un DataFrame.
#summary() puede ser aplicado a distintos tipos de objetos y
# muestra un resumen general sobre las variables del data frame.
#En numéricos muestra (mínimo, máximo, media, mediana, primer y tercer cuartil)

summary((Empleados))


#Agregar valor a un vector vacío dado.

vector<-c()
valores<-c(sample(1:30,6,replace=F))
print(valores)
for(i in 1:length(valores))
  vector[i]<-valores[i]
print(vector)


#Encontrar la suma, la media y el producto de un vector.

print(vector)
print(sum(vector))
print(mean(vector))
print(prod(vector))


# Encontrar la suma, la media y el producto de un vector ignorando NA o NaN
# na.rm=TRUE me ignora los NA y NAN y le dice que los ignore i siga calculando.

vec<-c(22,4,NA,12,7,NA,8)
print(vec)
print(sum(vec, na.rm=TRUE))
print(mean(vec, na.rm=TRUE))
print(prod(vec, na.rm=TRUE))


#Encontrar el mínimo y el máximo de un vector.

print(vec)
print("Valor Max")
print(max(vec,na.rm=TRUE))
print("Valor Min")
print(min(vec,na.rm=TRUE))


# Ordenar un vector en orden ascendente y descendente.
# Sort por defecto lo ordena ascendente, para descendente se lo comunico.

alfa<-c(1,12,34,25,100)
print(alfa)
print(sort(alfa))
print(sort(alfa, decreasing=TRUE))


#Probar si un vector dado contiene un elemento específico
# is.element == if element in lista print(element)

ve<-c(12,54,62,89,23,11)
print(ve)

print("Está el número 100:")
print(is.element(100, ve))

print("Está el número 54:")
print(is.element(54, ve))


# Acceder al último valor en un vector dado.
# Saco la longitud y luego accedo a esa posición.

ve<-c(12,54,62,89,23,11)
length(ve)
print(ve[6])

# Otra forma de acceder: Muestro con tail las 6 últimas posiciones 
# y le digo que me de n=1 que es la última posicion, si pongo n=2 me dará
# Las dos últimas posiciones.

ve<-c(12,54,62,89,23,11)

print("Vector dado:")
print(ve)
print("Accedo a la última posición:")
print(tail(ve, n=1))


# Encontrar el segundo valor más alto en un vector dado. Meto en una variable
# La longitud del vector, lo ordeno con sort y le digo que me de la ultima,
# Posición menos 1 = Antepenúltima.

ve<-c(12,54,62,89,23,11)
print(ve)
l=length(ve)
print(sort(ve)[l-1])

# Encontrar el n- ésimo valor más alto en un vector dado.

# Como ordena de mayor a menor el sort, le digo que vaya cambiando la posición n
# y me pase del úkltimo, al antepenúltimo, al anterior.... n=1, n=2, n=3...

ve<-c(12,54,62,89,23,11)
print(ve)
n = 1
print(sort(ve, TRUE)[n])

n = 2
print(sort(ve, TRUE)[n])

n = 3
print(sort(ve, TRUE)[n])

n = 4
print(sort(ve, TRUE)[n])

n = 5
print(sort(ve, TRUE)[n])

n = 6
print(sort(ve, TRUE)[n])



# Encontrar el n- ésimo valor más alto en un vector dado.
# Ordeno con sort de mayor a menor,
# doy la vuelta al vector con rev
# Saco la longitud del vector
# Igualo i a la posición leght y aplico un for


ve<-c(12,54,62,89,23,11)
list<-(sort(ve))
list<-rev(list)
print(list)
largo<-(length(list))
i<-largo
for(i in (list))
  print(i)


# Convertir las columnas de un marco de datos en un vector.
# Creo tres vectores con valores aleatorios.
# A la función pd le paso las variables de esos vectores.


vector1<-c()
valores1<-c(sample(1:30,6,replace=F))
print(valores1)
vector2<-c()
valores2<-c(sample(1:60,6,replace=F))
print(valores2)
vector3<-c()
valores3<-c(sample(1:100,6,replace=F))
print(valores3)
vector4<-c()
valores4<-c(sample(1:40,6,replace=F))
print(valores4)
v <- data.frame(valores1, valores2, valores3, valores4)
print(v)


#Invertir el orden de un vector dado.
ve<-c(12,54,62,89,23,11)
list<-rev(ve)
print(list)



# Convertir dos columnas de un marco de datos en un vector con nombre.
# Creo dataframe con dos vectores (vectores4,vectores3)
# Creo otro vector co los nombres de las columnas.
# setNames me pasa a vector las dos columnas del dataFrame y
# Si son números as. numeric, si son letras, as character....
# Indico que tome del dataframe las columnas num1,num2 y las pase a vector.



#Crear una lista que contenga cadenas, números, vectores y valores lógicos.

ve<-c(12,54,62,89,23,11)
lista<-list("Juan","Belén",27,52,43,TRUE,ve,FALSE,3.1416)
print(lista)

# Unir dos listas dadas en una lista.
# Aprovecho una lista ya creada y creo una nueva para tener dos y unirlas.

lista
print(lista)
lista_2<-list("Fresa","Menta",41,6)
print(lista_2)
lista_unica<-c(lista,lista_2)
print(lista_unica)

#Crear una lista de marcos de datos y acceder a cada uno de esos marcos de datos
# de la lista
# Aprovecho ek dataframe ya creado con nombres empleado y creo otro
#nuevo para hacer el ejercicio.
#Creo otro DataFrame con dos nuevos vectores y lo llamo Datos_empleados.
#Creo una lista con los dos DataFrame


DNI<-c("5136797A", "46096341J", "7639869A","0985674Ñ","7896523S")
Hijos<-c("si","si","no","si","si")
print(Empleados)
Datos_empleados<-data.frame(DNI,Hijos)
print(Datos_empleados)
lista_empleados<-list(Empleados,Datos_empleados)
print(lista_empleados)
print(lista_empleados[[2]])
print(lista_empleados[[1]])



# Contar el número de objetos en una lista.
# Lo hacemos con la función length.
# tanbién podemos hacerlo recorriendo la lista con bucle FOR


length(lista_empleados)

cont=0
for(i in (lista_empleados))
  cont=cont+1
  print(cont)
  
  
#Convertir un marco de datos dado en una lista por filas.
#Split me divide en subconjuntos el dataframe empleados 
#La función seq() permite generar sucesiones.Dispone de varios argumentos.
#nrow indica que la lista tenga tantos elementos como filas tiene el DF 
  
print(Empleados)
lista_Data = split(Empleados, seq(nrow(Empleados)))
print(lista_Data)

#Asignar NULL a un elemento de lista.

lista_Data[3]<-list(NULL)
print(lista_Data)

#crear un marco de datos vacío.
#Creo dos vectores e indico el tipo de dato.
#Monto dataFrame y nombro las columnas col1,col2
#str muestra algunos detalles de los objetos en memoria.

vector1<-c(numeric())
vector2<-c(character())

df_vacio<- data.frame("col1"=vector1,"col2"=vector2)

print(df_vacio)
str(df_vacio)


#Crear un marco de datos a partir de cuatro vectores dados.


a<-c(23,14,13,25,16)
b<-c("a","b","c","d","e")
c<-c(TRUE,FALSE,FALSE,FALSE,TRUE)
d<-c(1,9,11,34,1)
Datos<- data.frame(a,b,c,d)
print(Datos) 


#Obtener la estructura, cómo está conformado el marco de datos dado.

print(str(Datos))


#Resumen estadístico y la naturaleza de los datos de un marco de datos. 


print(summary(Datos))


#Extraer una columna específica de un marco de datos 
#usando el nombre de la columna.
#Creo una variable para guardar selección, indico DataFrame$Nombre de la columna.

seleccion <- data.frame(Datos$b,Datos$c)
print(seleccion)


#Extraer las dos primeras filas de un marco de datos.

Filas_2<-Datos[1:2,]
print(Filas_2)

#Extraer la 3ª y la 5ª filas con la 1ª y 3ª columnas de un marco de datos.
#Indico que cree dos vectores, primero con las filas y segundo con las columnas.

filcol<-Datos [c(3,5),c(1,4)]
print(filcol)


#Agregar una nueva columna en un marco de Datos.
# indico a DF que la columna se llama color con el vector definido.

Datos$color<-c("rojo","blanco","azul","verde","gris")
print(Datos)

#Agregar nuevas filas a un marco de datos existente.
#Rbind Une un vector o dos DFrame en verical.

fila_nueva <- c(1000 ,"f", "FALSE", 423,"marron")
Datos2 <- rbind(Datos, fila_nueva)
print(Datos2)


#Eliminar columna por nombre de un marco de datos dado
#Subset() crea subconjuntos seleccionando tanto filas como columnas
#por el nombre. 

Datos3<-Datos2
Datos3<- subset(Datos3, select=-c(a,c))
print(Datos3)


#Eliminar filas por número de un marco de datos.

#Indico -c de las filas a borrar.
Datos
Datos4<-Datos
Datos4<- Datos4[-c(1,4), ]
print(Datos4)


# Ordenar un marco de datos determinado por varias columnas.
#Ordena atendiendo el criterio de la primera columna  seleccionada
# y luego al criterio de la seguna columna seleccionada. 
#(Siempre respetando los valores de fila)


Empleados
Empleados2<-Empleados[with (Empleados, order(Sex,cargo)), ]
print(Empleados2)


#crear una unión (fusión) interna, externa, izquierda, derecha
# a partir de dos marcos de datos.

print(Empleados)

Nombres<-c(" Juan", "Pilar","Angel","Leticia","Almudena")
Sex<-c("M","F","M","F","F")
edad<-c(37,24,48,29,39)
cargo<-c("Administrativo","Marketing","Mozo","Comercial","Product")
Empleados2<- data.frame(Nombres,Sex,edad,cargo)
print(Empleados2)

print("Left outer Join:")

#Toma los nombres de Empleados  y agrega los nombres contenidos en 
#Empleados y Empleados 2 (Denominador común)

union_1 = merge(Empleados, Empleados2, by = "Nombres", all.x = TRUE)
print(union_1)



print("Right outer Join:")

#Toma los nombres de Empleados 2 y agrega los nombres contenidos en 
#Empleados y Empleados 2 (Denominador común)

union_2 = merge(Empleados, Empleados2, by = "Nombres", all.y = TRUE)
print(union_2)

print("Outer Join:")

#Toma los nombres repetidos en las dos tablas y todos los no repetidos
3# de cada una de las dos tablas. (Une todo)

union_3 = merge(Empleados, Empleados2, by = "Nombres", all = TRUE)
print(union_3)

print("Cross Join:")

union_4 = merge(Empleados, Empleados2, by = NULL)

print(union_4)


# Reemplazar los valores NA por el número 3 en un marco de datos.

print(union_3)
union_3[is.na(union_3)] = 3
print(union_3)

#Cambiar el nombre de una columna de un marco de datos

colnames(union_3)[which(names(union_3) == "edad.x")] = "edad"
print(union_3)
#Cambio nombre edad.x por edad.



#Cambiar más de un nombre de columna de un marco de datos.

colnames(union_3)[which(names(union_3) == "Sex.x")] = "sex"
colnames(union_3)[which(names(union_3) == "cargo.x")] = "cargo"
print(union_3)



#Seleccionar algunas filas aleatorias de un marco de datos.
# Con Sample saca aleatoriamente las filas y con nrown la cantidad.

print(union_3[sample(nrow(union_3), 3),])


#reordenar un marco de datos determinado por nombre de columna.

print(union_3)
union_3 =union_3 [c("Nombres", "Sex.y", "sex", "edad","edad.y","cargo.y","cargo")]
print(union_3)

#comparar dos marcos de datos para encontrar los elementos 
#en el primer marco de datos que no están presentes
#en el segundo marco de datos

print (Datos)
color2<-c("amarillo","naranja","negro","rojo","azul")
intensidad<-c(10,6,9,3,4)
objeto<-c("ficha","fruta","coche","muleta","cielo")
cosas<-data.frame(objeto,color2,intensidad)
print(cosas)
#He creado data Frame cosas y utilizo también DF Datos
#Selecciono la columna color de cada uno de ellos y las comparo.
seleccion1<- data.frame(Datos$color)
seleccion2<- data.frame(cosas$color2)
print(seleccion1)
print(seleccion2)

encontrar<- setdiff(seleccion1,seleccion2)
print(encontrar)



#Encontrar elementos que están presentes en dos marcos de datos

numeros1<-c(2,6,4,6,10,12,100)
pares<-data.frame(numeros1)

numeros2<-c(2,8,14,16,100,100,6)
pares2<-data.frame(numeros2)

dc = intersect(numeros1, numeros2)
print(dc)



#Une los dos datas sin repetir los elemento que son comunes en los dos DF

print(numeros1)
print(numeros2)

repetidos_una_vez = union(numeros1, numeros2)

print(repetidos_una_vez)


#Guardar la información de un marco de datos en un archivo 
#y mostrar la información del archivo.


print(Datos)

save(Datos,file="DataFrame_datos.rda")
load("DataFrame_datos.rda")
file.info("DataFrame_datos.rda") 



#Cuenta el número de valores NA en una columna de marco de datos.
# Dime la suma si es na en data union_1$columna Sex.y

print(union_1)
print(sum(is.na(union_1$Sex.y)))



#crear un marco de datos usando dos vectores dados y 
#muestra las filas con elementos duplicados
# y filas sin elementos duplicados;unicas.


numeros1<-c(2,6,4,4,4,10,12,12)
pares<-data.frame(numeros1)
print(pares)
numeros2<-c(2,8,14,16,16,100,100,100)
pares2<-data.frame(numeros2)
print(pares2)
pares_unidos = data.frame(pares,pares2)
print(pares_unidos)

#Me dice que filas están repetidas pero no las quita las marca como TRUE
#En este ejemplo están duplicadas la 5 y 8


print("Elementos duplicados:")
print(duplicated(pares_unidos))

#Si hay alguna fila repetida deja solo una.

print("filas unicas:")
print(unique(pares_unidos))


#llamar al conjunto de datos (integrado) airquality.
#Compruebe si es un marco de datos o no.
#Ordene todo el marco de datos por la primera y la segunda columna.

#uso el Dataframe mtcars.


data = mtcars
print(data)

print(class(data))
ordenacion<-data[with (data, order(mpg,cyl)), ]
print(ordenacion)

#Elimino las variables 'gear' y 'carb' que es eliminar las columnas.

data[,c("gear")]=NULL
data[,c("carb")]=NULL
print(data)


#Final
