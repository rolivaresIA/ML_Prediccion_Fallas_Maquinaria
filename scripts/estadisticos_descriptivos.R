# Estadisticos Descriptivos -----------------------------------------------

## Resumen general de estadisticos descriptivos por variable

Hmisc::describe(base_limpia)

## Horas de funcionamiento del equipo al momento de la falla
#### FIRST_DTC_ENGN_HOUR: 
#Variable continua que representa el n° de Horas de funcionamiento del equipo al momento de  la falla

psych::skew(base_limpia$first_dtc_engn_hours) # Coef. de asimetria
psych::kurtosi(base_limpia$first_dtc_engn_hours) # Curtosis
quantile(base_limpia$first_dtc_engn_hours, prob = seq(0, 1, 0.25)) # Cuantiles

#Creamos una tabla para ver los estadísticos por año de venta, para la variable first_dtc_engn_hour

base_limpia %>%
  group_by(año_facturacion) %>% # Agrupar por el campo año_facturacion
  summarise(
    Min = min(first_dtc_engn_hours, na.rm = TRUE),
    Q1 = quantile(first_dtc_engn_hours, probs = 0.25, na.rm = TRUE),
    Q2 = quantile(first_dtc_engn_hours, probs = 0.50, na.rm = TRUE), # Mediana
    Q3 = quantile(first_dtc_engn_hours, probs = 0.75, na.rm = TRUE),
    Max = max(first_dtc_engn_hours, na.rm = TRUE),
    Media = mean(first_dtc_engn_hours, na.rm = TRUE),
    `Desv. Estándar` = sd(first_dtc_engn_hours, na.rm = TRUE),
    `Coef. Asimetría` = psych::skew(first_dtc_engn_hours, na.rm = TRUE),
    Curtosis = psych::kurtosi(first_dtc_engn_hours, na.rm = TRUE))

# Realizamos un boxplot con la variable "AÑO_FACTURACION" y "FIRST_DTC_ENGN_HOURS"
base_limpia %>% 
  ggplot(aes(x = año_facturacion, y = first_dtc_engn_hours, fill= año_facturacion))+
  geom_boxplot()+
  theme_minimal()+
  theme(legend.position = "none")+
  labs(title = "Horas de funcionamiento del equipo al momento de la falla v/s Año de venta",
       x = "Año de Venta",
       y = "Horas")

ggplot(data = base_limpia, aes(x=first_dtc_engn_hours, fill = año_facturacion)) +
  geom_histogram(col="darkgrey", show.legend = FALSE, bins = 30)+
  labs(title = "Histograma: Horas de funcionamiento del equipo al momento de la falla",
       x = "Horas",
       y = "Frecuencia")+
  facet_wrap(~año_facturacion, scale = "free")

#Resumen
skim(base_limpia)

## Linea de producto
#### PROD_LINE_NM:
# Variable categorica que representa las lineas de producto de la base

base_limpia %>% 
  group_by(prod_line_nm) %>% 
  count() %>% 
  mutate(prop = n / nrow(base_limpia))

#Graficamos la distribucion
conteo_prod %>%
  ggplot(aes(x = reorder(prod_line_nm, -n), y = n)) +  # Reordena las barras de mayor a menor
  geom_bar(stat = "identity", fill = "royalblue2") +
  labs(
    title = "Gráfico de barras: Cantidad de equipos por línea de producto",
    x = "Tipo de equipo",
    y = "Cantidad"
  ) +
  theme(
    legend.position = "none",
    axis.text.x = element_text(angle = 30, hjust = 1),
    plot.title = element_text(face = "bold", size = 14),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10)
  ) +
  geom_text(
    aes(label = scales::percent(prop)),
    vjust = -0.3,
    color = "black",
    size = 3
  )

# Linea de productos segmentada por equipos con y sin mantención previa en SALFA
#install.packages("gmodels")
gmodels::CrossTable(base_limpia$prod_line_nm, base_limpia$mantencion_previa,
                    prop.t = F, prop.chisq = F, 
                    dnn = c("Linea de Producto", "¿Mantención previa?"))

gmodels::CrossTable(base_limpia$tipo_maquina_nivel_2, base_limpia$mantencion_previa,
                    prop.t = F, prop.chisq = F, 
                    dnn = c("Tipo de Máquina", "¿Mantención previa?"))

## N° de ocurrencia de la falla
#### SUM_OCR_CNT: 
# Variable discreta que representa el N° de ocurrencia de la falla (frecuencia)

psych::skew(base_limpia$sum_ocr_cnt) # Coef. de asimetria
psych::kurtosi(base_limpia$sum_ocr_cnt) # Curtosis
quantile(base_limpia$sum_ocr_cnt, prob = seq(0, 1, 0.25)) # Cuantiles
descriptivos_ind$sum_ocr_cnt

# Realizamos un histograma para observar como se distribuyen los datos
ggplot(data = base_limpia, aes(x=año_facturacion, y=sum_ocr_cnt)) +
  geom_col(fill="royalblue2")+
  labs(title = "N° de fallas v/s Año de Venta",
       x = "Año de Venta",
       y = "N° de fallas")

# Este histograma no es de ayuda para el analisis que deseamos realizar, dado 
# esta sumando la cantidad de fallas que se registran en la variable SUM_OCR_CNT
# y como esta variable es una frecuencia acumulada por ID de equipo distorsiona
# el dato real.

# Para solucionar el punto anterior, creamos un dataframe para reflejar la 
# cantidad de veces que se registra una falla para un cierto nivel de alerta

frecuencia_fallas <- base_limpia %>% 
                      group_by(alert_level, tla, prod_line_nm, año_facturacion) %>% 
                       summarise(n = n())

ggplot(data = frecuencia_fallas, aes(x=año_facturacion, y=n)) +
  geom_col(fill="royalblue2")+
  labs(title = "Frecuencia de fallas v/s Año de Venta",
       x = "Año de Venta",
       y = "N° de fallas")+
  facet_wrap(~alert_level)
