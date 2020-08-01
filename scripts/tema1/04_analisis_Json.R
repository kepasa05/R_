install.packages("jsonlite")
library(jsonlite)
install.packages("curl")
library(curl)

## Json en fichero
data1 <- fromJSON("../data/students.json")
data2 <- fromJSON("../data/student-courses.json")

## Json desde ur (necesario paquete curl)
url <- "http://www.floatrates.com/daily/usd.json"
currencies <- fromJSON(url)

## Acceso a los datos especificos del json mediante $
currencies$eur$name
data1$Name

## Acceso fila 1 a 5 y todas columnas
data1[1:5,]
## Mostrar 2 columnas, la 2 y la5
data2[c(2,5)]