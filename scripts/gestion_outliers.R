# Tratamiento de Valores Atipicos (outlier) -------------------------------

# Chequeamos si existe algún dato atipico en la data.

summary(base_limpia)
skim(base_limpia)

# Visualizacion Outlier --------------------------------------------------------------

# Identificamos valores atipicos realizando un boxplot por con las variables
# variable "AÑO_FACTURACION" y "FIRST_DTC_ENGN_HOURS", ambas variables relevantes
# al momento de predecir fallas

base_limpia %>% 
  ggplot(aes(x = año_facturacion, y = first_dtc_engn_hours, fill= año_facturacion))+
  geom_boxplot()+
  theme_minimal()+
  theme(legend.position = "none")+
  labs(title = "Horas de funcionamiento del equipo al momento de la falla v/s Año de venta",
       x = "Año de Venta",
       y = "Horas")

# Deteccion Outliers --------------------------------------------------------------

# Definicion: Valor atipico alto = Q1 + IQR * 3

#Opcion 1:

años <- unique(base_limpia$año_facturacion)
resultado <- c()

for (i in años){
  resultado[i] <- base_limpia %>% filter(año_facturacion == i) %>% select(first_dtc_engn_hours)
}

# Atipicos x año
ATIP_2011 <- quantile(resultado[["2011"]], prob = 0.25) + IQR(resultado[["2011"]])*3
ATIP_2012 <- quantile(resultado[["2012"]], prob = 0.25) + IQR(resultado[["2012"]])*3
ATIP_2013 <- quantile(resultado[["2013"]], prob = 0.25) + IQR(resultado[["2013"]])*3
ATIP_2014 <- quantile(resultado[["2014"]], prob = 0.25) + IQR(resultado[["2014"]])*3
ATIP_2015 <- quantile(resultado[["2015"]], prob = 0.25) + IQR(resultado[["2015"]])*3
ATIP_2016 <- quantile(resultado[["2016"]], prob = 0.25) + IQR(resultado[["2016"]])*3
ATIP_2017 <- quantile(resultado[["2017"]], prob = 0.25) + IQR(resultado[["2017"]])*3
ATIP_2018 <- quantile(resultado[["2018"]], prob = 0.25) + IQR(resultado[["2018"]])*3
ATIP_2019 <- quantile(resultado[["2019"]], prob = 0.25) + IQR(resultado[["2019"]])*3
ATIP_2020 <- quantile(resultado[["2020"]], prob = 0.25) + IQR(resultado[["2020"]])*3

# Posiciones x año
POS_ATIP_2011 <- which(base_limpia$año_facturacion == "2011" & base_limpia$first_dtc_engn_hours > ATIP_2011)
POS_ATIP_2012 <- which(base_limpia$año_facturacion == "2012" & base_limpia$first_dtc_engn_hours > ATIP_2012)
POS_ATIP_2013 <- which(base_limpia$año_facturacion == "2013" & base_limpia$first_dtc_engn_hours > ATIP_2013)
POS_ATIP_2014 <- which(base_limpia$año_facturacion == "2014" & base_limpia$first_dtc_engn_hours > ATIP_2014)
POS_ATIP_2015 <- which(base_limpia$año_facturacion == "2015" & base_limpia$first_dtc_engn_hours > ATIP_2015)
POS_ATIP_2016 <- which(base_limpia$año_facturacion == "2016" & base_limpia$first_dtc_engn_hours > ATIP_2016)
POS_ATIP_2017 <- which(base_limpia$año_facturacion == "2017" & base_limpia$first_dtc_engn_hours > ATIP_2017)
POS_ATIP_2018 <- which(base_limpia$año_facturacion == "2018" & base_limpia$first_dtc_engn_hours > ATIP_2018)
POS_ATIP_2019 <- which(base_limpia$año_facturacion == "2019" & base_limpia$first_dtc_engn_hours > ATIP_2019)
POS_ATIP_2020 <- which(base_limpia$año_facturacion == "2020" & base_limpia$first_dtc_engn_hours > ATIP_2020)

# Total de posiciones

# Valores atipicos altos
POS_ATIPICOS_A <- c(POS_ATIP_2011, POS_ATIP_2012,POS_ATIP_2013, POS_ATIP_2014,POS_ATIP_2015, 
                    POS_ATIP_2016, POS_ATIP_2017, POS_ATIP_2018, POS_ATIP_2019, 
                    POS_ATIP_2020)

# Valores atipicos bajos
POS_ATIPICOS_B <- which(base_limpia$first_dtc_engn_hours < 5)

length(POS_ATIPICOS_A)
length(POS_ATIPICOS_B)

# Opcion 2:

# Definición: Valor atípico alto = Q1 + IQR * 3
años <- unique(base_limpia$año_facturacion)

# Inicializar listas para almacenar resultados
atipicos <- list()
pos_atipicos_altos <- list()

# Calcular valores atípicos y posiciones
for (i in años) {
  # Filtrar datos del año actual
  datos_año <- base_limpia %>% filter(año_facturacion == i) %>% pull(first_dtc_engn_hours)
  
  # Calcular valor atípico
  atipico <- quantile(datos_año, prob = 0.25) + IQR(datos_año) * 3
  pos_atipicos_altos[[as.character(i)]] <- atipico
  
  # Obtener posiciones de los valores atípicos
  pos_atipicos_altos[[as.character(i)]] <- which(base_limpia$año_facturacion == i & base_limpia$first_dtc_engn_hours > atipico)
}


conteo_atipicos_altos <- vapply(pos_atipicos_altos, length, numeric(1))  # Asegura un vector numérico

# Calcular el total de valores atípicos altos
total_atipicos_altos <- sum(conteo_atipicos_altos)

# Mostrar los resultados de Atípicos altos:
print(total_atipicos_altos)
cat("Total de valores atípicos altos:", total_atipicos_altos, "\n")

# Total de posiciones de valores atípicos bajos
pos_atipicos_bajos <- which(base_limpia$first_dtc_engn_hours < 5)

# Contar valores atípicos bajos
total_atipicos_bajos <- length(pos_atipicos_bajos)

# Mostrar los resultados de Atípicos bajos:
print(total_atipicos_bajos)
cat("Total de valores atípicos bajos:", total_atipicos_bajos, "\n")

sum(total_atipicos_altos, total_atipicos_bajos)

#Deslistamos
pos_atipicos_altos <- unlist(pos_atipicos_altos)

# Unir todas las posiciones a eliminar
pos_atipicos <- c(pos_atipicos_altos, pos_atipicos_bajos)

# Eliminar valores atípicos detectados y sobreescribimos sobre base_limpia
base_limpia <- base_limpia %>% slice(-pos_atipicos)

# Limpiar variables temporales
remove(atipicos, posiciones, POS_ATIPICOS_A, POS_ATIPICOS_B, POS_ATIPICOS)
remove(años, atipico, conteo_atipicos_altos, datos_año, i, pos_atipicos, pos_atipicos_altos,
       pos_atipicos_bajos, resultado, total_atipicos_altos, total_atipicos_bajos, vector)

# Vemos nuevamente el boxplot sin outliers

base_limpia %>% 
  ggplot(aes(x = año_facturacion, y = first_dtc_engn_hours, fill= año_facturacion))+
  geom_boxplot()+
  theme_minimal()+
  theme(legend.position = "none")+
  labs(title = "Horas de funcionamiento del equipo al momento de la falla v/s Año de venta",
       x = "Año de Venta",
       y = "Horas")

## Limpiamos la base -------------------------------------------------------

# Eliminacion de valores atipicos detectados
base_limpia2 <- base_limpia %>% slice(-POS_ATIPICOS_A, -POS_ATIPICOS_B) 

remove(POS_ATIP_2011, POS_ATIP_2012,POS_ATIP_2013, POS_ATIP_2014,POS_ATIP_2015, 
       POS_ATIP_2016, POS_ATIP_2017, POS_ATIP_2018, POS_ATIP_2019, 
       POS_ATIP_2020, POS_ATIPICOS_B, POS_ATIPICOS_A, ATIP_2011, ATIP_2012,
       ATIP_2013, ATIP_2014, ATIP_2015, ATIP_2016, ATIP_2017, ATIP_2018,
       ATIP_2019, ATIP_2020)

