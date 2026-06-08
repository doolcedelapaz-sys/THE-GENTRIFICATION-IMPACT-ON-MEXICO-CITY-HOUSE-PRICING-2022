* Clear memory

drop _all
clear matrix
cls

/********************************************************************/
*        Research project:  decriptive analysis
/********************************************************************/


* 2) loading data 
use "/Users/dulcedelapazortiz/Documents/MMEF-QEM SUBJECTS/ECONOMETRICS I/MID-TERM-ECONOMETRIA/dataset-cleaned /alvaro-obregon-cleaned-appended.dta"

* 3) desting variables to ensure they are numeric (use it to converted from string to numerical)
destring valor_unitario_suelo, replace
destring valor_suelo, replace
destring superficie_terreno, replace
destring superficie_construccion, replace
destring anio_construccion, replace
destring subsidio, replace
destring alcaldia, replace

* 4) checking if log data has better distribution 
gen log_valor_unitario_suelo = log(valor_unitario_suelo)
gen log_valor_suelo = log(valor_suelo)
gen log_superficie_terreno = log(superficie_terreno)
gen log_superficie_construccion = log(superficie_construccion)
gen log_subsidio = log(subsidio)


/********************************************************************/
*        Mid-term:  simple linear regression 
/********************************************************************/
*𝑌 = 𝑐𝑜𝑛𝑠𝑡𝑎𝑛𝑡 + β1𝑋1 + ε
*Y = price per meter square (valor_unitario_suelo)
*X = distance from center in Km (distance_from_center_km)

*  1) generating distance from center of Mexico city variable with L2 norm as measure (using euclidean distance formula)
gen distance_from_center = sqrt((latitud - 19.4326018)^2 + (longitud + 99.1332049)^2)
*  2) New variable which take into account the curvature from degrees to km 
gen distance_from_center_km = distance_from_center * (11.319)
*  3) Generate its log of this variable to compared later in the multivariable regression
gen log_distance_from_center_km = log(distance_from_center)

*  4) some analysis with Scatterplot
twoway scatter valor_unitario_suelo distance_from_center_km , msize(tiny) || lfit valor_unitario_suelo distance_from_center_km , title("Distance from center by price") xtitle(" km from CDMX center") ytitle("Mexican pesos per meter square ") 
// Comment: we can see that the top left in the rank distance between 0 and 1, there is a scatter of outliers, and the bottom right the price per meter square is between 0 and less than 5000, there is an inverse variable correlation. and we have like a "U" shape inverse, no linearity. 

* recall: Mexico City center latitud is 19.4326018 -99.1332049 
twoway scatter latitud longitud, colorvar(valor_unitario_suelo) msize(tiny) jitter() title("CDMX households by cathegorical prices") subtitle("Red dot represents Mexico City Center") xtitle("Longitud") ytitle("Latitud") legend(label(1 "") pos(11) col(1) order(1)) || scatteri 19.4326018 -99.1332049 

sum valor_unitario_suelo
// comment: our interest here is to see, how the price per meter square have been changing around the Mexico city downtown. let's see now where the minumum, mean and maximum values are located (min is $54 max is $20,222 and mean is $3,446 mexican pesos)lets used them now as "quartiles" .

twoway scatter latitud longitud, colorvar(valor_unitario_suelo) colorcuts(54.35, 3446.3, 20222.04) msize(tiny) jitter() title("CDMX households by mean, minumum, maximum") subtitle("Red dot represents Mexico City Center") xtitle("Longitud") ytitle("Latitud") legend(label(1 "") pos(11) col(1) order(1)) || scatteri  19.4326018 -99.1332049

*  5) first univariate regression on just this distance variable
reg valor_unitario_suelo distance_from_center_km

*  6) trying univariate regression with  logs to see how much explains
*reg log_valor_unitario_suelo log_distance_from_center_km 
// comment: we can see that our R-sqaure increse from 11% to 25%, meaning that this distance single variable in log explain the model in  25%, lets run a multivariable regression, to see how much explain the other variables. 

*  7) Lets run a new variable "Alcaldia", so we have to create  cathegorical dummies manually because is a string variable (with factorial notation). 
gen alcaldia_coding = .
replace alcaldia_coding = 1 if alcaldia =="ALVARO OBREGON"
replace alcaldia_coding = 2 if alcaldia =="AZCAPOTZALCO"
replace alcaldia_coding = 3 if alcaldia =="BENITO JUAREZ"
replace alcaldia_coding = 4 if alcaldia =="COYOACAN"
replace alcaldia_coding = 5 if alcaldia =="CUAJIMALPA DE MORELOS"
replace alcaldia_coding = 6 if alcaldia =="CUAUHTEMOC"
replace alcaldia_coding = 7 if alcaldia =="GUSTAVO A. MADERO"
replace alcaldia_coding = 8 if alcaldia =="IZTACALCO"
replace alcaldia_coding = 9 if alcaldia =="IZTAPALAPA"
replace alcaldia_coding = 10 if alcaldia =="LA MAGDALENA CONTRERAS"
replace alcaldia_coding = 11 if alcaldia =="MIGUEL HIDALGO"
replace alcaldia_coding = 12 if alcaldia =="MILPA ALTA"
replace alcaldia_coding = 13 if alcaldia =="TLAHUAC"
replace alcaldia_coding = 14 if alcaldia =="TLALPAN"
replace alcaldia_coding = 15 if alcaldia =="VENUSTIANO CARRANZA"
replace alcaldia_coding = 16 if alcaldia =="XOCHIMILCO"

reg valor_unitario_suelo i.alcaldia_coding 
bysort alcaldia_coding: summarize valor_unitario_suelo

*  8) Lets generate a new binary dummy. 
//comment:we are goint to consider the neighborhoods above the average price ($3446.33 MXN) per meter square as the not affordable or expensive β7=1 and the below the mean the no expensive neighborhoods β7=0 
gen affordable_alcaldia = 0
replace affordable_alcaldia = 1 if inlist(alcaldia_coding, 1, 3, 4, 5, 6, 11)


/********************************************************************/
*        Mid-term:   multivariate linear regression
/********************************************************************/


* 1)histogram from the graphics to plot histogram diagram for all the variables both level and logged
*hist valor_unitario_suelo, percent title("Unit ground price") subtitle("Price per meter square")
*hist valor_suelo, percent  title("Ground price") subtitle(" Total price ")
*hist superficie_terreno, percent  title("Ground surface ") 
*hist superficie_construccion, percent title("Built Surface") subtitle("Per meter sqaure")
*hist subsidio, percent           title("Subsidy") subtitle("In mexican pesos")
*hist distance_from_center_km, percent   title("Distance from zocalo center") subtitle("Per kilometers")

*hist log_valor_unitario_suelo, percent title(" Log Unit ground price") subtitle("Price per meter square") normal
*hist log_valor_suelo, percent  title("Log Ground price") subtitle(" Total price ") normal
*hist log_superficie_terreno, percent  title(" Log Ground surface ") normal
*hist log_superficie_construccion, percent title("Log Built Surface") subtitle("Per meter sqaure") normal
*hist log_subsidio, percent           title("Log Subsidy") subtitle("In mexican pesos") normal
*hist log_distance_from_center_km, percent   title(" Log Distance from zocalo center") subtitle("Per kilometers") normal

*2) first multivariable regression level model and log model 
reg valor_unitario_suelo distance_from_center_km subsidio anio_construccion superficie_construccion superficie_terreno i.affordable_alcaldia

//note: drop variable ground price (valor_suelo) can cause corelation with ground unit price ( valor_unitario_suelo).

reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno i.affordable_alcaldia 

*3) Checking for correlation among variables
corr log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno 

*4) Checking multicollinearity
reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno

vif
//comment: VIF values less than 5, so is great.

*5) Testing Hesteroskedasticity
//comment: are clustered posibility of heteroskedasticity
rvfplot
*Breusch-Pagan test
//comment: the command (fstat) is added it to give the results in fisher, p-value is significant, rejct H0 so heteroskedasticity, residual variables are not constant. 
hettest, rhs fstat

*6) Correcting Heteroskedasticity
reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno, robust


*7) Comparing OLS and robust models 
reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno, robust

eststo robust

reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno

eststo ols

estout robust ols, cells (b(star) se)
//comment: all coefficients got three stars *** for p < 0.001, great. 
 

*8) Selecting variables
stepwise, pr(0.05): reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno

*9) checking possible endogeneity 
ivregress 2sls log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno
*Durbin-Wu-Hausman test
estat endog

*10) final model  
// comment: running improved regression from before but with robust standard errors, r-squared of 66% (because we are in log)
reg log_valor_unitario_suelo log_distance_from_center_km log_subsidio anio_construccion log_superficie_construccion log_superficie_terreno i.affordable_alcaldia, robust




