#statistika vaje 2
library(dplyr)
d <- read.delim("data.txt")

p<-read.delim("postaje.txt")
# . ²port glede na kadilce; Ustrezno ozna£ite graf (naslov, osi).
dhist1<-filter(d, Smoking=="yes")%>%group_by(Sport..hours.per.week.)
hist(dhist1$Sport..hours.per.week.)
# . teºo glede na igranje video igric; Kako interpretirate rezultate?
dhist2<-d%>%filter( Videogames=="yes")
hist(dhist2$Weight)
#   . teºo glede na spol; Kako sedaj interpretirate zgornje rezultate?
dhist3<-d%>%group_by(Sex)
hist(dhist3$Weight)
#   . ²tevilo Facebook prijateljev glede na video igrice


