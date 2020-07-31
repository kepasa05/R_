# carga fichero con cabecera y separador ,
auto <- read.csv("../data/auto-mpg.csv", header = TRUE, sep = ",")
names(auto)

# Para fichero que use separador ; y decimal ,
  ## read.csv2 == read.csv("filename", sep = ";", dec = ",")

# cargar fichero sin cabecera
auto_no_header <- read.csv("../data/auto-mpg-noheader.csv", header = FALSE, sep = ",")
names(auto_no_header)
head(auto_no_header, 4)

auto_no_header_callnames <- read.csv("../data/auto-mpg-noheader.csv", header = FALSE, 
                                     col.names = c("numero", "millas_galon", "cilindros", 
                                   "desplazamiento", "caballos_vapor", "peso","aceleracion","año_modelo","nombre_coche"),sep = ",")
names(auto_no_header_callnames)
head(auto_no_header_callnames, 4)