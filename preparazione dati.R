#preparazione dati

library(here)
covid <- readRDS(here("covid.rds"))
head(covid)
View(covid)
colnames(covid)
rownames(covid)
summary(covid)

#frequenza e tabella provincia
freq_prov <- table(covid$Provincia)
freq_prov

prop.table(freq_prov)

#grafici per provincia
barplot(freq_prov)
hist(freq_prov)

#frequenza e tabella tipo conf
freq_tipoconf <- table(covid$tipoconf)
freq_tipoconf

prop.table(freq_tipoconf)

#grafici tipo conf
barplot(freq_tipoconf)
hist(freq_tipoconf)

#elimino valori mancanti per il dettaglio materiale
is.na(covid$Dett_Materiale)
newcovid <- na.omit(covid)
View(newcovid)

#frequenza e tabella dett materiale

freq_dettmateriale <- table(newcovid$Dett_Materiale)
freq_dettmateriale

prop.table(freq_dettmateriale)

#grafici dett materiale

barplot(freq_dettmateriale)
hist(freq_dettmateriale)

install.packages("tidyverse")
library(tidyverse)

newcovid 
hist(newcovid$Tot_Eseguiti)







plot(nconf, Tot_Eseguiti,xlab="Numero conf", ylab="Totale eseguiti", type="b")
