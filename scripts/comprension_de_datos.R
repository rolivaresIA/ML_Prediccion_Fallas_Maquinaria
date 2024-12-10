library(tidyverse)
library(readxl) # para leer formatos xls y xlsx
library(janitor) # para limpiar la base
library(skimr) # para la descripcion detallada de la data
library(lubridate) # para trabajar el formato fechas

# Importacion de la base --------------------------------------------------

#Importacion base Model_Breakdown_by_PIN_11th_Digit_Full_Data_data.xlsx

base <- read_excel("databases/Model_Breakdown_by_PIN_11th_Digit_Full_Data_data.xlsx") %>% 
  clean_names()

View(base)


#Importacion base DESCRIPCTIVOS EQUIPO JD.xlsx

base_desc <- read_excel("databases/DESCRIPCTIVOS EQUIPO JD.xlsx") %>% 
  clean_names()

View(base_desc)

# Realizamos un join para obtener la obtener la antiguedad del equipo

base_join <- left_join(base, base_desc, by = c("native_pin" = "vin_equipo"))

View(base_join)

# Analisis exploratorio de los datos --------------------------------------

dim(base_join) # dimension
str(base_join) # aporta info sobre el contenido de cada columna 
summary(base_join) # revisamos estadisticas descriptivas

# Obs.:
# 1. Las fechas estan quedando en formato "POSIXct" 
# 2. Existen variables que no aportan información relevante para la prediccion de
# fallas en los equipos, entre ellas encontramos:
# a) dealer_name / dealer_acct_id: ambas hacen referencia al comercializador de 
# los equipos, y que en el fondo es SALFA (definido en el word) 
# b) tier_level: la norma de emisión de gases 
# c) start_of_month: mes de referencia de la falla, se elimina dado que este mismo
# dato se encuentra en la variable first_cptr_tm, la cual es mas precisa que 
# start_of_month, pues en esta ultima se fija el dia 1 de cada mes.
# d) last_known_lat / last_known_long: latitud y longitud reportada por el equipo 
# e) PIN: es el mismo aporte que arroja la variable “native_pin”
# f) mfg_dt: fecha en que se activo la telemetria del equipo
# g) last_known_engn_hours: Horas de funcionamiento del equipo al momento de 
# extracción de la información

# Modificamos el formato de las variables que requieren cambios y eliminamos las
# variables que no aportan mayor informacion

base_join2 <- base_join %>% 
  mutate(MFG_DT = ymd(mfg_dt)) %>% 
  separate(col = first_cptr_tm, into = c("first_cptr_tm", 
                                         "hour_first_cptr_tm"),
           convert = TRUE, sep = " ") %>% 
  mutate(first_cptr_tm = ymd(first_cptr_tm)) %>% 
  mutate(fecha_facturacion = ymd(fecha_facturacion)) %>% 
  mutate("año_facturacion" = as.character(format(fecha_facturacion, "%Y"))) %>% 
  mutate("fecha_mantencion" = as.character(format(mant_ult_fecha, "%Y"))) %>% 
  mutate(mantencion_previa = factor(case_when(fecha_mantencion == "2019" ~ "Si", 
                                              fecha_mantencion == "2020" ~ "Si",
                                              TRUE ~ "No"))) %>% 
  select(-dealer_acct_id, -pin, -tier_level, -dealer_name, -start_of_month, 
         -last_known_lat, -last_known_long, -mfg_dt, -hour_first_cptr_tm, 
         -last_known_engn_hours, -tla_spn_fmi, -fecha_mantencion, -mant_ult_fecha,
         -fecha_facturacion, -marca, -modelo, -tipo_maquina_nivel_3, -horometro, -odometro,
         -n)

View(base_join2)

# Obs.: ahora contamos con 13 columnas O variables

# Generamos una revision preliminar de los valores nulos, estadisticos descriptivos 
# e histograma segun el tipo de variable. Observando el histograma podemos determinar
# la asimetria de cada variable

skim(base_join2) 
