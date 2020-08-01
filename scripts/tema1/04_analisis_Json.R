install.packages("jsonlite")
library(jsonlite)
install.packages("curl")
library(curl)

## Json en fichero
data1 <- fromJSON("../data/students.json")
data2 <- fromJSON("../data/student-courses.json")

## Json desde ur (necesario paquete curl)
url <- "https://datos.gob.es/apidata/catalog/dataset/l01280148-educacion-primaria-centros-publicos-alumnos-2010-2017.json"
currencies <- fromJSON(url)