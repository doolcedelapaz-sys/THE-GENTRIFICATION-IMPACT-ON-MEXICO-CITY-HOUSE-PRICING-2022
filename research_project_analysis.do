* Clear memory
drop _all
clear matrix
cls

/********************************************************************/
*        Research project:  decriptive analysis
/********************************************************************/

*1) Know the current directory 
pwd 
* 2) Change it (put my own path)
cd "/Users/dulcedelapazortiz/Desktop/Dulce research project /dataset-cleaned "

* 3) loading data 
use "alvaro-obregon-cleaned-appended.dta"

* 3) desting variables to manipulate them 
destring valor_unitario_suelo, replace
destring valor_suelo, replace
destring superficie_terreno, replace
destring superficie_construccion, replace
destring anio_construccion, replace
destring subsidio, replace


* 3) checking if log data has better distribution 
gen valor_unitario_suelo = log(valor_unitario_suelo)
gen valor_suelo = log(valor_suelo)
gen superficie_terreno = log(superficie_terreno)
gen superficie_construccion = log(superficie_construccion)
gen subsidio = log(subsidio)

* 4)histogram from the graphics to plot histogram diagram for all the variables both level and logged

/********************************************************************/
*        Research project:  simple linear regression 
/********************************************************************/

*  1) generating distance from center of Mexico city variable using L2 norm as measure
gen distance_from_center = sqrt((latitude + 19.4326018)^2 + (longitude - 99.1332049)^2)


/********************************************************************/
*        Research project:   multivariate regression
/********************************************************************/
