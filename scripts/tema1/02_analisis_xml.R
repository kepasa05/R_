
# Instalacion paquete XML
install.packages("XML")
library(XML)

# Carga fichero y position en raiz para comenzar a ver los datos.

url <- "../data/cd_catalog.xml"
xmldoc <- xmlParse(url)
rootnode <- xmlRoot(xmldoc)
rootnode[1]

# creacion dataframe de Cd
csd_data <- xmlSApply(rootnode,function(x) xmlSApply(x,xmlValue))

# Transposicion
cds.catalog <- data.frame(t(csd_data), row.names = NULL)
