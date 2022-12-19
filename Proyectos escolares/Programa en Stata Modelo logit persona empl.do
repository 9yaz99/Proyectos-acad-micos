*I. CONFIGURACION DE ETIQUETAS Y CATEGORIAS*
*1.1. Configuracion de etiquetas de variables*
*1.1. Configuracion de etiquetas de variables*

label variable ocupado "Ocupado"
label variable eda "Edad del entrevistado"
label variable sexo "Sexo del entrevistado"
label variable anios_esc "años de escolaridad"
label variable rururb "Urbano o Rural"

*1.2. Configuracion de categorias, para variables cualitativas*
label define ocupado 1 "ocupado" 0 "desempleado" 
label values ocupado ocupado
label define sexo 1 "Hombre" 0 "Mujer" 
label values sexo sexo
label define rururb 1 "Urbano" 0 "Rural" 
label values rururb rururb

br

****LOGIT**********************************************************************
*******************************************************************************

logit ocupado  anios_esc eda rururb

estimates store logit

**efectos marginales***
mfx
***Bondad de ajuste*********

ssc install fitstat
fitstat

//capacidad predictiva del logit****
estat classification
//PRESENTACIÓN DE RESULTADOS//
********************************************************************************
estimates table logit, star stat (N r2)


 //ESCENARIOS//
********************************************************************************
logit ocupado  anios_esc eda rururb
predict plogit
br