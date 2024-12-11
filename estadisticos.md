### Estadísticos descriptivos

Una vez con nuestra base completamente limpia, sin valores nulos u
outliers, procedemos a ver los estadísticos descriptivos por variable.
Recordemos que aún tenemos 14 variables, por lo que el resultado
mostrado por la consola podría ser algo extenso, pero nos dará una
visión más clara de sus estadísticos.

Esto lo hacemos con el fin de poder entender profundamente los valores
de las variables que disponemos:

    Hmisc::describe(base_limpia)

    ## base_limpia 
    ## 
    ##  14  Variables      28967  Observations
    ## ----------------------------------------------------------------------------------------------------------
    ## decal_model_nm 
    ##        n  missing distinct 
    ##    28967        0       63 
    ## 
    ## lowest : 1050K       1270E       1270G       130G        1470E      
    ## highest: 859M        859MH       872G        959ML       ZAXIS 470-5
    ## ----------------------------------------------------------------------------------------------------------
    ## alert_level 
    ##        n  missing distinct 
    ##    28967        0        4 
    ##                                           
    ## Value         INFO     RED UNKNOWN  YELLOW
    ## Frequency    11039    3202     957   13769
    ## Proportion   0.381   0.111   0.033   0.475
    ## ----------------------------------------------------------------------------------------------------------
    ## alert_defn_dsc 
    ##        n  missing distinct 
    ##    28967        0     2541 
    ## 
    ## lowest : AC Clutch Open Circuit                                                                                        AC Clutch Short To Ground                                                                                     Alternator Speed Below Normal                                                                                 Anti-Theft Error                                                                                              Battery Voltage Low                                                                                          
    ## highest: YELLOW VCU 524044.01 Axle Oil Filter restricted - Replace Filter. Additional troubleshooting may be required. YELLOW VCU 524044.03 Axle Oil Filter Restriction Switch circuit fault - Troubleshooting required.             YELLOW VSS 521395.12 Accelerometer Sensor - Bad Intelligent, Intermittent or Incorrect                        YELLOW WAB 524221.5 pump 1 current low                                                                        YELLOW WAB 524222.5 WARATAH PUMP 2 CURRENT LOW                                                               
    ## ----------------------------------------------------------------------------------------------------------
    ## pin_prefix 
    ##        n  missing distinct 
    ##    28967        0        7 
    ##                                                     
    ## Value        1BZ   1DW   1F9   1FF   1T0   1WJ   HCM
    ## Frequency   4634 12190  1910  1709  4934  3579    11
    ## Proportion 0.160 0.421 0.066 0.059 0.170 0.124 0.000
    ## ----------------------------------------------------------------------------------------------------------
    ## prod_line_nm 
    ##        n  missing distinct 
    ##    28967        0       13 
    ## 
    ## lowest : ADT                     BACKHOE LOADERS         CRAWLER DOZERS          EXCAVATORS (AMERICAS)   FORWARDERS             
    ## highest: SWING MACHINES          TRACKED FELLER BUNCHERS TRACKED HARVESTERS      WHEEL LOADERS           WHEELED HARVESTERS     
    ## ----------------------------------------------------------------------------------------------------------
    ## tla 
    ##        n  missing distinct 
    ##    28967        0       56 
    ## 
    ## lowest : ACL ACR ADU ALC ALS, highest: VCU VPC VSS WAB WAC
    ## ----------------------------------------------------------------------------------------------------------
    ## first_cptr_tm 
    ##          n    missing   distinct       Info       Mean    pMedian        Gmd        .05        .10 
    ##      28967          0        366          1 2020-06-24      18438      125.9 2020-01-12 2020-02-01 
    ##        .25        .50        .75        .90        .95 
    ## 2020-03-16 2020-06-28 2020-10-01 2020-11-25 2020-12-09 
    ## 
    ## lowest : 2020-01-01 2020-01-02 2020-01-03 2020-01-04 2020-01-05
    ## highest: 2020-12-27 2020-12-28 2020-12-29 2020-12-30 2020-12-31
    ## ----------------------------------------------------------------------------------------------------------
    ## native_pin 
    ##        n  missing distinct 
    ##    28967        0     1234 
    ## 
    ## lowest : 1BZ310KXAGC000684 1BZ310KXAGC000720 1BZ310KXAGC000846 1BZ310KXAGC000863 1BZ310KXCGC000858
    ## highest: 1WJ1910EPFC001427 1WJ1910EPJC001677 HCMJACK0E00051755 HCMJACK0K00051695 HCMJACK0V00051751
    ## ----------------------------------------------------------------------------------------------------------
    ## first_dtc_engn_hours 
    ##        n  missing distinct     Info     Mean  pMedian      Gmd      .05      .10      .25      .50 
    ##    28967        0    18793        1     5261     4920     4637    180.7    634.5   1870.1   4153.8 
    ##      .75      .90      .95 
    ##   8114.2  11845.2  13183.8 
    ## 
    ## lowest : 5       5.1     5.2     5.21667 5.25   , highest: 18430.4 18433.2 18433.4 18448.1 18468.2
    ## ----------------------------------------------------------------------------------------------------------
    ## sum_ocr_cnt 
    ##        n  missing distinct     Info     Mean  pMedian      Gmd      .05      .10      .25      .50 
    ##    28967        0      969    0.951    66.59      5.5    122.2        1        1        1        3 
    ##      .75      .90      .95 
    ##       12       86      221 
    ## 
    ## lowest :     1     2     3     4     5, highest: 15686 15916 16228 17141 17690
    ## ----------------------------------------------------------------------------------------------------------
    ## tipo_maquina_nivel_2 
    ##        n  missing distinct 
    ##    28967        0        2 
    ##                                             
    ## Value      MAQ CONSTRUCCION     MAQ FORESTAL
    ## Frequency             19878             9089
    ## Proportion            0.686            0.314
    ## ----------------------------------------------------------------------------------------------------------
    ## MFG_DT 
    ##          n    missing   distinct       Info       Mean    pMedian        Gmd        .05        .10 
    ##      28967          0        646          1 2017-01-02      17240      843.6 2012-06-07 2014-01-01 
    ##        .25        .50        .75        .90        .95 
    ## 2015-07-23 2017-06-22 2018-06-21 2019-04-08 2019-07-26 
    ## 
    ## lowest : 2011-07-07 2011-07-08 2011-07-13 2011-07-20 2011-08-18
    ## highest: 2020-09-04 2020-09-10 2020-09-21 2020-10-15 2020-10-29
    ## ----------------------------------------------------------------------------------------------------------
    ## año_facturacion 
    ##        n  missing distinct 
    ##    28967        0       10 
    ##                                                                       
    ## Value       2011  2012  2013  2014  2015  2016  2017  2018  2019  2020
    ## Frequency    546   964   541   679  2991  1937  5697  6645  6207  2760
    ## Proportion 0.019 0.033 0.019 0.023 0.103 0.067 0.197 0.229 0.214 0.095
    ## ----------------------------------------------------------------------------------------------------------
    ## mantencion_previa 
    ##        n  missing distinct 
    ##    28967        0        2 
    ##                       
    ## Value         No    Si
    ## Frequency  20834  8133
    ## Proportion 0.719 0.281
    ## ----------------------------------------------------------------------------------------------------------

A lo largo del proyecto hemos investigado la importancia de ciertas
variables y cómo éstas podrían ayudarnos a la predicción de fallas. Dado
esto, a continuación analizaremos exhaustivamente la variable
`first_dtc_engn_hours` (Horas de funcionamiento del equipo al momento de
la falla). Para esto, en primer lugar veremos la asimetría de los datos
de nuestra base:

-   `Coeficiente de asimetría`:

<!-- -->

    psych::skew(base_limpia$first_dtc_engn_hours)

    ## [1] 0.7957582

-   `Curtosis`:

<!-- -->

    psych::kurtosi(base_limpia$first_dtc_engn_hours)

    ## [1] -0.25132

-   `Cuantiles`:

<!-- -->

    quantile(base_limpia$first_dtc_engn_hours, prob = seq(0, 1, 0.25))

    ##       0%      25%      50%      75%     100% 
    ##     5.00  1870.05  4153.80  8114.20 18468.18

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

    ## # A tibble: 10 × 10
    ##    año_facturacion    Min     Q1     Q2     Q3    Max  Media `Desv. Estándar` `Coef. Asimetría` Curtosis
    ##    <chr>            <dbl>  <dbl>  <dbl>  <dbl>  <dbl>  <dbl>            <dbl>             <dbl>    <dbl>
    ##  1 2011            1952.  8266.  10448. 12315. 14365. 10117.            2715.            -0.820    1.05 
    ##  2 2012            4263.  8359.   9295. 11222. 16863.  9726.            2635.             0.243    0.423
    ##  3 2013            4882.  8791.  10856. 13334. 14911. 10586.            2895.            -0.442   -0.815
    ##  4 2014             244.  8135.   9174. 11840. 17205.  9808.            2548.             0.405    0.432
    ##  5 2015               6.4 8589.  12271. 13811. 18468. 11506.            3539.            -0.368   -0.217
    ##  6 2016            1385.  7008.  10637  11758. 14592.  9391.            3159.            -0.665   -0.679
    ##  7 2017             137.  3662.   5669.  7707. 14282.  5748.            2594.             0.366   -0.279
    ##  8 2018              12.4 2385.   3587.  4886  10142.  3848.            1988.             0.852    0.543
    ##  9 2019               7.9  957.   1750.  2938.  6921.  2049.            1374.             0.738   -0.169
    ## 10 2020               5     17.2   290.   857.  2547.   536.             635.             1.23     0.495
