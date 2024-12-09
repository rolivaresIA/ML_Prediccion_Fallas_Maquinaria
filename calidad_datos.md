# Calidad de los Datos

### Estadísticos descriptivos

A continuación, generamos una revisión preliminar de los estadísticos
descriptivos, valores nulos e histograma según el tipo de variable.
Observando el histograma podemos determinar la asimetría de cada
variable:

    library(naniar)

    skim(base_join2)

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">base_join2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">32594</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">14</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">character</td>
<td style="text-align: left;">9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

Data summary

**Variable type: character**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">min</th>
<th style="text-align: right;">max</th>
<th style="text-align: right;">empty</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: right;">whitespace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">decal_model_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">alert_level</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">alert_defn_dsc</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">221</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2751</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">pin_prefix</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">prod_line_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tla</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">native_pin</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1385</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tipo_maquina_nivel_2</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">año_facturacion</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_cptr_tm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: left;">2020-01-01</td>
<td style="text-align: left;">2020-12-31</td>
<td style="text-align: left;">2020-07-01</td>
<td style="text-align: right;">366</td>
</tr>
<tr class="even">
<td style="text-align: left;">MFG_DT</td>
<td style="text-align: right;">234</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: left;">2011-06-14</td>
<td style="text-align: left;">2020-10-29</td>
<td style="text-align: left;">2017-06-13</td>
<td style="text-align: right;">725</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mantencion_previa</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">No: 23964, Si: 8630</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 2%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 5%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_dtc_engn_hours</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">5308.44</td>
<td style="text-align: right;">4272.09</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1875.81</td>
<td style="text-align: right;">4209.29</td>
<td style="text-align: right;">8201.4</td>
<td style="text-align: right;">74566.95</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">sum_ocr_cnt</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">66.51</td>
<td style="text-align: right;">477.99</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">12.0</td>
<td style="text-align: right;">17690.00</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

    skim(base_join2)

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">base_join2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">32594</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">14</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">character</td>
<td style="text-align: left;">9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

Data summary

**Variable type: character**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">min</th>
<th style="text-align: right;">max</th>
<th style="text-align: right;">empty</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: right;">whitespace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">decal_model_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">alert_level</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">alert_defn_dsc</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">221</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2751</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">pin_prefix</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">prod_line_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tla</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">native_pin</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1385</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tipo_maquina_nivel_2</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">año_facturacion</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_cptr_tm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: left;">2020-01-01</td>
<td style="text-align: left;">2020-12-31</td>
<td style="text-align: left;">2020-07-01</td>
<td style="text-align: right;">366</td>
</tr>
<tr class="even">
<td style="text-align: left;">MFG_DT</td>
<td style="text-align: right;">234</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: left;">2011-06-14</td>
<td style="text-align: left;">2020-10-29</td>
<td style="text-align: left;">2017-06-13</td>
<td style="text-align: right;">725</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mantencion_previa</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">No: 23964, Si: 8630</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 2%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 5%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_dtc_engn_hours</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">5308.44</td>
<td style="text-align: right;">4272.09</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1875.81</td>
<td style="text-align: right;">4209.29</td>
<td style="text-align: right;">8201.4</td>
<td style="text-align: right;">74566.95</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">sum_ocr_cnt</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">66.51</td>
<td style="text-align: right;">477.99</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">12.0</td>
<td style="text-align: right;">17690.00</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

    skim(base_join2)

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">base_join2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">32594</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">14</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">character</td>
<td style="text-align: left;">9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

Data summary

**Variable type: character**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">min</th>
<th style="text-align: right;">max</th>
<th style="text-align: right;">empty</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: right;">whitespace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">decal_model_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">alert_level</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">alert_defn_dsc</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">221</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2751</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">pin_prefix</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">prod_line_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tla</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">native_pin</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1385</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tipo_maquina_nivel_2</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">año_facturacion</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_cptr_tm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: left;">2020-01-01</td>
<td style="text-align: left;">2020-12-31</td>
<td style="text-align: left;">2020-07-01</td>
<td style="text-align: right;">366</td>
</tr>
<tr class="even">
<td style="text-align: left;">MFG_DT</td>
<td style="text-align: right;">234</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: left;">2011-06-14</td>
<td style="text-align: left;">2020-10-29</td>
<td style="text-align: left;">2017-06-13</td>
<td style="text-align: right;">725</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mantencion_previa</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">No: 23964, Si: 8630</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 2%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 5%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_dtc_engn_hours</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">5308.44</td>
<td style="text-align: right;">4272.09</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1875.81</td>
<td style="text-align: right;">4209.29</td>
<td style="text-align: right;">8201.4</td>
<td style="text-align: right;">74566.95</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">sum_ocr_cnt</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">66.51</td>
<td style="text-align: right;">477.99</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">12.0</td>
<td style="text-align: right;">17690.00</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

    skim(base_join2)

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">base_join2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">32594</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">14</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">character</td>
<td style="text-align: left;">9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

Data summary

**Variable type: character**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">min</th>
<th style="text-align: right;">max</th>
<th style="text-align: right;">empty</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: right;">whitespace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">decal_model_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">alert_level</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">alert_defn_dsc</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">221</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2751</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">pin_prefix</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">prod_line_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tla</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">native_pin</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1385</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tipo_maquina_nivel_2</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">año_facturacion</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_cptr_tm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: left;">2020-01-01</td>
<td style="text-align: left;">2020-12-31</td>
<td style="text-align: left;">2020-07-01</td>
<td style="text-align: right;">366</td>
</tr>
<tr class="even">
<td style="text-align: left;">MFG_DT</td>
<td style="text-align: right;">234</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: left;">2011-06-14</td>
<td style="text-align: left;">2020-10-29</td>
<td style="text-align: left;">2017-06-13</td>
<td style="text-align: right;">725</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mantencion_previa</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">No: 23964, Si: 8630</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 2%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 5%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_dtc_engn_hours</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">5308.44</td>
<td style="text-align: right;">4272.09</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1875.81</td>
<td style="text-align: right;">4209.29</td>
<td style="text-align: right;">8201.4</td>
<td style="text-align: right;">74566.95</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">sum_ocr_cnt</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">66.51</td>
<td style="text-align: right;">477.99</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">12.0</td>
<td style="text-align: right;">17690.00</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

    skim(base_join2)

<table>
<caption>Data summary</caption>
<tbody>
<tr class="odd">
<td style="text-align: left;">Name</td>
<td style="text-align: left;">base_join2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of rows</td>
<td style="text-align: left;">32594</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of columns</td>
<td style="text-align: left;">14</td>
</tr>
<tr class="even">
<td style="text-align: left;">_______________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Column type frequency:</td>
<td style="text-align: left;"></td>
</tr>
<tr class="even">
<td style="text-align: left;">character</td>
<td style="text-align: left;">9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Date</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">factor</td>
<td style="text-align: left;">1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">numeric</td>
<td style="text-align: left;">2</td>
</tr>
<tr class="even">
<td style="text-align: left;">________________________</td>
<td style="text-align: left;"></td>
</tr>
<tr class="odd">
<td style="text-align: left;">Group variables</td>
<td style="text-align: left;">None</td>
</tr>
</tbody>
</table>

Data summary

**Variable type: character**

<table style="width:100%;">
<colgroup>
<col style="width: 26%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 5%" />
<col style="width: 5%" />
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">min</th>
<th style="text-align: right;">max</th>
<th style="text-align: right;">empty</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: right;">whitespace</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">decal_model_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">69</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">alert_level</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">alert_defn_dsc</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">221</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2751</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">pin_prefix</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">7</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">prod_line_nm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">23</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">13</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tla</td>
<td style="text-align: right;">245</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">3</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">61</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">native_pin</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">17</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1385</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="even">
<td style="text-align: left;">tipo_maquina_nivel_2</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">12</td>
<td style="text-align: right;">16</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">2</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">año_facturacion</td>
<td style="text-align: right;">2164</td>
<td style="text-align: right;">0.93</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">4</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">11</td>
<td style="text-align: right;">0</td>
</tr>
</tbody>
</table>

**Variable type: Date**

<table>
<colgroup>
<col style="width: 17%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 13%" />
<col style="width: 11%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">min</th>
<th style="text-align: left;">max</th>
<th style="text-align: left;">median</th>
<th style="text-align: right;">n_unique</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_cptr_tm</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: left;">2020-01-01</td>
<td style="text-align: left;">2020-12-31</td>
<td style="text-align: left;">2020-07-01</td>
<td style="text-align: right;">366</td>
</tr>
<tr class="even">
<td style="text-align: left;">MFG_DT</td>
<td style="text-align: right;">234</td>
<td style="text-align: right;">0.99</td>
<td style="text-align: left;">2011-06-14</td>
<td style="text-align: left;">2020-10-29</td>
<td style="text-align: left;">2017-06-13</td>
<td style="text-align: right;">725</td>
</tr>
</tbody>
</table>

**Variable type: factor**

<table>
<colgroup>
<col style="width: 22%" />
<col style="width: 12%" />
<col style="width: 17%" />
<col style="width: 10%" />
<col style="width: 11%" />
<col style="width: 25%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: left;">ordered</th>
<th style="text-align: right;">n_unique</th>
<th style="text-align: left;">top_counts</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">mantencion_previa</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1</td>
<td style="text-align: left;">FALSE</td>
<td style="text-align: right;">2</td>
<td style="text-align: left;">No: 23964, Si: 8630</td>
</tr>
</tbody>
</table>

**Variable type: numeric**

<table style="width:100%;">
<colgroup>
<col style="width: 20%" />
<col style="width: 9%" />
<col style="width: 13%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 2%" />
<col style="width: 7%" />
<col style="width: 7%" />
<col style="width: 6%" />
<col style="width: 8%" />
<col style="width: 5%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">skim_variable</th>
<th style="text-align: right;">n_missing</th>
<th style="text-align: right;">complete_rate</th>
<th style="text-align: right;">mean</th>
<th style="text-align: right;">sd</th>
<th style="text-align: right;">p0</th>
<th style="text-align: right;">p25</th>
<th style="text-align: right;">p50</th>
<th style="text-align: right;">p75</th>
<th style="text-align: right;">p100</th>
<th style="text-align: left;">hist</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">first_dtc_engn_hours</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">5308.44</td>
<td style="text-align: right;">4272.09</td>
<td style="text-align: right;">0</td>
<td style="text-align: right;">1875.81</td>
<td style="text-align: right;">4209.29</td>
<td style="text-align: right;">8201.4</td>
<td style="text-align: right;">74566.95</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
<tr class="even">
<td style="text-align: left;">sum_ocr_cnt</td>
<td style="text-align: right;">558</td>
<td style="text-align: right;">0.98</td>
<td style="text-align: right;">66.51</td>
<td style="text-align: right;">477.99</td>
<td style="text-align: right;">1</td>
<td style="text-align: right;">1.00</td>
<td style="text-align: right;">3.00</td>
<td style="text-align: right;">12.0</td>
<td style="text-align: right;">17690.00</td>
<td style="text-align: left;">▇▁▁▁▁</td>
</tr>
</tbody>
</table>

    base_join2 %>% 
      filter(año_facturacion == "2021") %>% 
      summarise(n = n())

    ## # A tibble: 1 × 1
    ##       n
    ##   <int>
    ## 1   122

No deberiamos tener observaciones de 2021 dado que se habia definido que
la base de datos mostraria alertas del año 2020, por tanto es inusual
que equipos vendidos en 2021 tengan alertas en 2020.

-   Registros Afectados: 122
-   Decision: Eliminamos estos registros al no ser significativos en la
    data

<!-- -->

    vector <- which(base_join2$año_facturacion == "2021")

    base_join2 <- base_join2 %>% slice(-vector)

### Valores nulos

Una vez visto los estadísticos descriptivos a nivel general, procedemos
a hacer el **Análisis de Missing** o de valores faltantes.

En el siguiente recuadro se resumen los valores nulos existentes en
nuestra base de datos, siendo la columna n\_miss: cantidad de valores
nulos, y la columna pct\_mmiss: el porcentaje de valores nulos, ambas
respecto del total de 32.594 registros de la base.

    miss_var_summary(base_join2) %>%
      filter(n_miss != 0)

    ## # A tibble: 5 × 3
    ##   variable             n_miss pct_miss
    ##   <chr>                 <int>    <num>
    ## 1 tipo_maquina_nivel_2   2164    6.66 
    ## 2 año_facturacion        2164    6.66 
    ## 3 sum_ocr_cnt             558    1.72 
    ## 4 tla                     245    0.754
    ## 5 MFG_DT                  234    0.721

    vis_miss(base_join2) +
      theme_classic() +
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1))

![](calidad_datos_files/figure-markdown_strict/unnamed-chunk-11-1.png)
Observamos que las variables provenientes de la base de datos original
**Descriptivos Equipo** representan un 6,66% de los valores nulos
existentes. Para profundizar sobre esta situación se realizaron las
consultas respectivas al área de telemetría de SALFA, quienes nos
explicaron que los valores nulos se justifican por equipos adquiridos
por los clientes antes del año 2011, y a nivel de negocio no son equipos
sobre los cuales se pueda realizar un servicio post venta, dado que ya
cumplieron con su vida útil. En base a lo expuesto se determina
prescindir de estos datos.

### Análisis de Sesgo

Continuaremos con la revisión de los valores nulos presentes en las
variables: ‘sum\_ocr\_cnt’ (n° de ocurrencia de la falla) y ‘tla’
(categoría de la falla). La idea es determinar si la omisión de estas
variables generará algún tipo de sesgo al trabajar con la data.

Para esto definiremos como sesgo variaciones de missing superiores al 5%
entre las categorías de la variable ‘año\_facturacion’, que para los
objetivos del estudio es una variable relevante para detectar fallas en
los equipos.

**Datos perdidos de la variable ‘sum\_ocr\_cnt’ por las categorías de
‘año\_facturacion’:**

    base_join2 %>% 
      group_by(año_facturacion) %>%  
      summarise(nmiss = sum(is.na(sum_ocr_cnt)), n = n(), porcentaje = (nmiss/n)*100)

    ## # A tibble: 11 × 4
    ##    año_facturacion nmiss     n porcentaje
    ##    <chr>           <int> <int>      <dbl>
    ##  1 2011               18   587      3.07 
    ##  2 2012               16  1050      1.52 
    ##  3 2013               19   569      3.34 
    ##  4 2014                3   692      0.434
    ##  5 2015              134  3178      4.22 
    ##  6 2016               33  1983      1.66 
    ##  7 2017               81  5830      1.39 
    ##  8 2018               65  7094      0.916
    ##  9 2019               60  6338      0.947
    ## 10 2020               40  2987      1.34 
    ## 11 <NA>               89  2164      4.11

Se observa que la variación entre el año con mayor proporción de datos
perdidos (2015 – 4,2%) v/s el año con menor proporción de datos vacíos
(2014 – 0,4%) no es superior al 5%, por tanto, se concluye que la
omisión de estos datos no generara sesgo en nuestro análisis.

**Datos perdidos de la variable ‘tla’ por las categorías de
‘año\_facturacion’:**

    base_join2 %>% 
      group_by(año_facturacion) %>%  
      summarise(nmiss = sum(is.na(tla)), n = n(), porcentaje = (nmiss/n)*100)

    ## # A tibble: 11 × 4
    ##    año_facturacion nmiss     n porcentaje
    ##    <chr>           <int> <int>      <dbl>
    ##  1 2011               13   587      2.21 
    ##  2 2012               74  1050      7.05 
    ##  3 2013                9   569      1.58 
    ##  4 2014               10   692      1.45 
    ##  5 2015               33  3178      1.04 
    ##  6 2016                7  1983      0.353
    ##  7 2017               13  5830      0.223
    ##  8 2018               30  7094      0.423
    ##  9 2019               37  6338      0.584
    ## 10 2020                0  2987      0    
    ## 11 <NA>               19  2164      0.878

Podemos ver que el año 2012, con 74 registros nulos tiene un porcentaje
de datos faltantes del 7,05%, por lo que en base a nuestra definición
anterior si estaría generando sesgo. A continuación revisaremos con
mayor detalle los datos de 2012.

Se observa sesgo en el año 2012, con 74 registros nulos (7,05%). En la
siguiente imagen revisamos con mayor detalle los datos de 2012 para
comprobar si efectivamente generarán sesgo.

    base_join2 %>% 
      filter(año_facturacion == "2012", alert_level == "UNKNOWN") %>% 
      group_by(alert_level, alert_defn_dsc) %>%  
      summarise(nmiss = sum(is.na(tla)), n = n(), porcentaje = (nmiss/n)*100) %>% 
      filter(porcentaje != 0)

    ## `summarise()` has grouped output by 'alert_level'. You can override using the `.groups` argument.

    ## # A tibble: 3 × 5
    ## # Groups:   alert_level [1]
    ##   alert_level alert_defn_dsc                                                        nmiss     n porcentaje
    ##   <chr>       <chr>                                                                 <int> <int>      <dbl>
    ## 1 UNKNOWN     Invalid DTC Name                                                         65    67       97.0
    ## 2 UNKNOWN     RED      ECU 000629.12    Engine control unit fault.  -  Restart eng…     2     2      100  
    ## 3 UNKNOWN     test                                                                      7     7      100

Se aprecia que los 74 registros perdidos corresponden nivel de alerta
‘Unknown’, y se agrupan dentro de la descripción de alerta ‘Invalid DTC
Name’, que corresponde a una clasificación que no reviste mayor
importancia al momento de analizar fallas, por tanto, se determina
omitir estos datos pues no generaran distorsión al análisis.
