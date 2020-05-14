install.packages("jsonlite", repos="http://cran.r-project.org")
install.packages("curl")
install.packages("DT")
library(jsonlite)
library(curl)
#library(DT)

airquality_mty <- fromJSON("https://api.datos.gob.mx/v2/sinaica?city=Monterrey") 
options(max.print=500000)
airquality_mty
str(airquality_mty)


  airquality_mty_df <- as.data.frame(airquality_mty)
adt <- as.data.frame.table(airquality_mty)

str(airquality_mty_df)

##Salida
rownum(airquality_mty_df)

data.frame(head(airquality_mty_df))



names(airquality_mty_df)[names(airquality_mty_df)=="results.parametro"] <- "parametro"



colnames(airquality_mty_df)
names(airquality_mty_df)[names(airquality_mty_df)=="results._id"] <- "id"
names(airquality_mty_df)[names(airquality_mty_df)=="results.date"] <- "fecha"
names(airquality_mty_df)[names(airquality_mty_df)=="results.city"] <- "ciudad"
names(airquality_mty_df)[names(airquality_mty_df)=="results.state"] <- "estado"
names(airquality_mty_df)[names(airquality_mty_df)=="results.valororig"] <- "valor_original"

