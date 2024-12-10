# Calidad de los datos -------------------------------

# No deberiamos tener observaciones de 2021 dado que se habia definido que la
# base de datos mostraria alertas del año 2020, por tanto es inusual que 
# equipos vendidos en 2021 tengan alertas en 2020.

base_join2 %>% filter(año_facturacion == "2021") %>% 
  summarise(n = n())

# Registros afectados: 122
# Decision: eliminamos estos registros al no ser significativos en la data

vector <- which(base_join2$año_facturacion == "2021")
base_join2 <- base_join2 %>% 
  slice(-vector)

View(base_join2)

# Analisis de Missing -----------------------------------------------------

library(naniar)

## Detectamos las variables con datos missing

miss_var_summary(base_join2) %>% # tabla con cantidad y porcentaje de valores vacios
  filter(n_miss != 0)

vis_miss(base_join2) # visualizacion de valores vacios

vis_miss(base_join2) +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

## Revisamos sesgo ---------------------------------------------------------

# Definiciones: para nuestro analisis entenderemos como sesgo, variaciones de 
# missing superiores al 5% entre las categorias de la variable AÑO_FACTURACION, 
# que para los objetivos del estudio es una variable relevante para detectar 
# fallas en los equipos

base_join2 %>% 
  group_by(año_facturacion) %>%  
  summarise(nmiss = sum(is.na(sum_ocr_cnt)), n = n(), porcentaje = (nmiss/n)*100)

# El porcentaje de missing de la variable SUM_OCR_CNT al agrupar por las categorias    
# de la variable AÑO_FACTURACION no es elevado, por tanto no existe sesgo. 

base_join2 %>% 
  group_by(año_facturacion) %>%  
  summarise(nmiss = sum(is.na(tla)), n = n(), porcentaje = (nmiss/n)*100)

# El porcentaje de missing de la variable TLA al agrupar por las categorias de   
# la variable AÑO_FACTURACION es elevado para el año 2012, por tanto se debe
# profundizar en el origen los missing de esta variable

base_join2 %>% 
  filter(año_facturacion == "2012", alert_level == "UNKNOWN") %>% 
  group_by(alert_level, alert_defn_dsc) %>%  
  summarise(nmiss = sum(is.na(tla)), n = n(), porcentaje = (nmiss/n)*100) %>% 
  filter(porcentaje != 0)

# Observamos que los missing (valores nulos) de la variable TLA corresponden
# al nivel de alerta: Desconocido (Unkwon), siendo el producto MOTOR GRADERS
# el que posee mayor n° de missing, esto implica que debemos revisar si existe
# algun sesgo al agrupar esta variable por tipo de producto.

base_join2 %>% 
  group_by(prod_line_nm) %>%  
  summarise(nmiss = sum(is.na(tla)), n = n(), porcentaje = (nmiss/n)*100) %>% 
  filter(porcentaje > 5)

base_join2 %>%  group_by(alert_level) %>% 
  summarise(n = n())

## Limpiamos la base -------------------------------------------------------

# Dado que no observamos un sesgo relevante en los datos se decide eliminar los 
# datos nulos

base_limpia <- drop_na(base_join2)

View(base_limpia)
