* Clear memory
drop _all
clear matrix
cls

/********************************************************************/
*        Research project: clean data and append data
/********************************************************************/

*1) Know the current directory 
pwd 
* 2) Change it (put my own path)
cd "/Users/dulcedelapazortiz/Desktop/Dulce research project /dataset-cleaned "

* 3)Import Excel "ALVARO OBREGON "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/alvaro-obregon-catastro.xlsx", sheet("alvaro-obregon-catastro") firstrow clear
* 4) cleaning alvaro-obregon-catastro dataset 


* checking relevance of instalaciones_especiales variable
*tab instalaciones_especiales 
drop instalaciones_especiales
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal


* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4

* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 100 from my general data 
sample 400, count 
gen ID= _n
*save data 
save alvaro-obregon-cleaned.dta, replace

clear

*5)Import Excel "COYOACAN "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/coyoacan-catastro.xlsx", sheet("coyoacan-catastro") firstrow clear

* 6) cleaning coyoacan-catastro dataset 
* checking relevance of instalaciones_especiales variable
drop instalaciones_especiales
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal


* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save coyoacan-cleaned.dta, replace

clear


*7)Import Excel " CUAJIMALPA "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/cuajimalpa-catastro.xlsx", sheet("cuajimalpa-catastro") firstrow clear

* 8) cleaning cuajimalpa-catastro dataset 
* checking relevance of instalaciones_especiales variable
drop instalaciones_especiales
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal


* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save cuajimalpa-cleaned.dta, replace

clear

*9)Import Excel " CUAUHTEMOC "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/cuauhtemoc-catastro.xlsx", sheet("cuauhtemoc-catastro") firstrow clear

* 10) cleaning cuauhtemoc-catastro dataset 
* checking relevance of instalaciones_especiales variable
drop instalaciones_especiales
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal


* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save cuauhtemoc-cleaned.dta, replace

clear


*11)Import Excel " GUSTAVO-A-MADERO "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/gustavo-a-madero-catastro.xlsx", sheet("gustavo-a-madero-catastro") firstrow clear

* 12) cleaning gustavo-a-madero-catastro dataset 
* checking relevance of instalaciones_especiales variable
drop instalaciones_especiales
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal


* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save gustavo-a-madero-catastro.dta, replace

clear

*13)Import Excel " IZTACALCO "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/iztacalco-catastro.xlsx", sheet("iztacalco-catastro") firstrow clear

*14) cleaning iztacalco dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save iztacalco-catastro.dta, replace

clear


*15)Import Excel " IZTAPALAPA "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/iztapalapa-catastro.xlsx", sheet("iztapalapa-catastro") firstrow clear

*16) cleaning iztapalapa dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save iztapalapa-catastro.dta, replace

clear


*17)Import Excel " MIGUEL HIDALGO "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/miguel-hidalgo-catastro.xlsx", sheet("miguel-hidalgo-catastro") firstrow clear

*18) cleaning miguel hidalgo dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save miguel-hidalgo-catastro.dta, replace

clear

*21)Import Excel " MILPA ALTA  "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/milpa-alta-catastro.xlsx", sheet("milpa-alta-catastro") firstrow clear

*22) cleaning milpa alta dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save milpa-alta-catastro.dta, replace

clear


*23)Import Excel " TLAHUAC "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/tlahuac-catastro.xlsx", sheet("tlahuac-catastro") firstrow clear

*24) cleaning tlahuac dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save tlahuac-catastro.dta, replace

clear


*25)Import Excel " TLALPAN "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/tlalpan-catastro.xlsx", sheet("tlalpan-catastro") firstrow clear

*26) cleaning tlalpan dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save tlalpan-catastro.dta, replace

clear

*25)Import Excel " VENUSTIANO CARRANZA"
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/venustiano-carranza-catastro.xlsx", sheet("venustiano-carranza-catastro") firstrow clear

*26) cleaning tlalpan dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save venustiano-carranza-catastro.dta, replace

clear

*27)Import Excel "XOCHIMILCO"
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/xochimilco-catastro.xlsx", sheet("xochimilco-catastro") firstrow clear

*28) cleaning xochimilco dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save xochimilco-catastro.dta, replace

clear

*29)Import Excel "AZCAPOTZALCO"
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/azcapotzalco-catastro.xlsx", sheet("azcapotzalco-catastro") firstrow clear

*30) cleaning azcapotzalco dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save azcapotzalco-catastro.dta, replace

clear


*31)Import Excel "BENITO JUAREZ"
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/benito-juarez-catastro.xlsx", sheet("benito-juarez-catastro") firstrow clear

*32) cleaning benito juarez dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
*tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4
* now drop empty values
drop if missing(anio_construccion)


* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save benito-juarez-catastro.dta, replace

clear


*33)Import Excel "MAGDALENA CONTRERAS "
import excel "/Users/dulcedelapazortiz/Desktop/Dulce research project /Catastro CDMX/magdalena-contreras-catastro.xlsx", sheet("magdalena-contreras-catastro") firstrow clear

*34) cleaning magdalena contreras dataset 
* dropping unwanted variables 
drop clave_valor_unitario_suelo 
drop clave_rango_nivel 
drop codigo_postal
drop instalaciones_especiales

* checking missing values in uso_construccion variable 
tab uso_construccion 
* first replace all NA's with empty values and defining our aspect of interest. 
replace uso_construccion = "" if uso_construccion == "NA"
replace uso_construccion = "" if uso_construccion == "Usos Existentes"
replace uso_construccion = "" if uso_construccion == "Sin Zonificaci√≥n"
replace uso_construccion = "" if uso_construccion == "Pol√≠gono de Actuaci√≥n"
replace uso_construccion = "" if uso_construccion == "Industrial"
replace uso_construccion = "" if uso_construccion == "Servicios P√∫blicos"
replace uso_construccion = "" if uso_construccion == "Comercial "
* now drop empty values
drop if missing(uso_construccion)


* checking missing values in anio_construccion variable 
*tab anio_construccion
* first replace all NA's, 5's and 0's  with empty values
replace anio_construccion= "" if anio_construccion == "NA"
replace anio_construccion= "" if strlen(anio_construccion) != 4

* now drop empty values
drop if missing(anio_construccion)



* dropping missing values in the rest of the variables 
* first replace all NA's with empty values
replace valor_suelo = "" if valor_suelo == "NA"
* now drop empty values
drop if missing(valor_suelo)


* sampling randomly 400 from my general data 
sample 400, count 
gen ID= _n
*save data 
save magdalena-contreras-catastro.dta, replace

clear

*35) append the 16 datasets since all of them contain the same varibles 
*we want to stack datasets 

use "alvaro-obregon-cleaned.dta", clear

append using "coyoacan-cleaned.dta", force 
order ID alcaldia
append using "cuajimalpa-cleaned.dta", force 
order ID alcaldia
append using "cuauhtemoc-cleaned.dta", force 
order ID alcaldia
append using "gustavo-a-madero-catastro.dta", force  
order ID alcaldia
append using "iztacalco-catastro.dta",force
order ID alcaldia              
append using "miguel-hidalgo-catastro.dta",force  
order ID alcaldia         
append using "milpa-alta-catastro.dta",force   
order ID alcaldia            
append using "tlahuac-catastro.dta",force  
order ID alcaldia                
append using "tlalpan-catastro.dta",force  
order ID alcaldia                
append using "venustiano-carranza-catastro.dta",force 
order ID alcaldia     
append using "xochimilco-catastro.dta",force  
order ID alcaldia             
append using "benito-juarez-catastro.dta",force   
order ID alcaldia  
append using "magdalena-contreras-catastro.dta",force
order ID alcaldia  
append using "azcapotzalco-catastro.dta",force
order ID alcaldia  
append using "iztapalapa-catastro.dta",force
order ID alcaldia  



save "alvaro-obregon-cleaned-appended.dta", replace

