#STAT VAJE 4


# 1. Denimo, da v povpre£ju precka most 12(lambda) avtov na minuto. Koliksna je verjetnost, da
# most pre£ka manj kot 16(15 ali manj) avtov na minuto? 
#POISSONOVA SPREMENLJIVKA-The Poisson distribution is the probability distribution of 
#independent event occurrences in an interval. 
#If ?? is the mean occurrence per interval, then the probability of having x 
#occurrences within a given interval is:
#ppois je porazdelitvena funkcija
#dpois density 
#qpois kvantili
#rpois 

ppois(15,12)

#Kolik²na pa je verjetnost, da most pre£ka
# ve£ kot 18 avtov na minuto?
ppois(18,12,lower.tail = F)
#3%






#   2. Nari²ite porazdelitveno funkcijo geometrijske porazdelitve z izbranim 
#parametrom p.
a<-seq(1:100)
plot(pgeom(a, 0.04), type="s")


# 3. Recimo, da je verjetnost okvare ra£unalnika 0,02. Kolik²na je verjetnost, da se je izmed
# 500 ra£unalnikov pokvarilo 15 ra£unalnikov?
#BINOMSKA SPREMENLJIVKA, uspeh=pokvarjeni racunalniki

dbinom(15, 500, 0.02)



#   4. Poskusite kako zmogljiv je program za ra£unanje binomskih simbolov. Do katerih
# vrednosti n in k ra£una brez teºav?

choose(10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,3)

#   