
# Instalacion paquete XML
install.packages("XML")
library(XML)

# Carga fichero y position en raiz para comenzar a ver los datos.
url <- "../data/cd_catalog.xml" 
xmldoc <- xmlParse(url)        # devuelve un XML Internal Document
rootnode <- xmlRoot(xmldoc)    # Accede al nodo raiz del xml, obteniendo la estructura de datos.
rootnode[1]                    

# creacion dataframe de Cd
# xmlSApply recorre todo el nodo obteniedo sus valores. raiz (xmlValue)
csd_data <- xmlSApply(rootnode,function(x) xmlSApply(x,xmlValue)) 

# Transposicion
cds.catalog <- data.frame(t(csd_data), row.names = NULL)
head(cds.catalog, 2)
cds.catalog[1:5,]
