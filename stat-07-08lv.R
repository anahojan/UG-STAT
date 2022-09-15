# #statistika vaje 07
# 
# 1. Suppose the mean weight of King Penguins found in an Antarctic colony last year was
# 15.4 kg. In a sample of 35 penguins same time this year in the same colony, the mean
# penguin weight is 14.6 kg. Assume the population standard deviation is 2.5 kg. At
# .05 signicance level, can we reject the null hypothesis that the mean penguin weight
# does not dier from last year?

n<-35
sigma<-2.5

mi_star<-15.4
alpha<-0.05
avr<-14.6
z<-((avr-mi_star)/(sigma/sqrt(n)))

library(BSDA)
zsum.test(mean.x=14.6, sigma.x=2.5, n.x = 35, alternative = "less", mu=15.4,conf.level =  0.95)
#alternative garater, twosided, less
zsum.test(mean.x=14.6, sigma.x=2.5, n.x = 35, alternative = "two.sided", mu=15.4,conf.level =  0.95)


zsum.test(mean.x=14.6, sigma.x=2.5, n.x = 35, alternative = "greater", mu=15.4,conf.level =  0.95)

#H0-
#H1-

#p-vrednost je verjetnost da dobimo tak rezultat ali se bolj skrajen rezultat,pri pogoju da H0 velja
#p vrednost primerjamo z alfo-in vedno ko je p manjsi od alfe H0 zavrnemo v prid alternativni
#



#   2. Suppose the mean weight of King Penguins found in an Antarctic colony last year was
# 15.4 kg. In a sample of 35 penguins same time this year in the same colony, the mean
# penguin weight is 14.6 kg. Assume the sample standard deviation is 2.5 kg. At .05
# signicance level, can we reject the null hypothesis that the mean penguin weight does
# not dier from last year?

tsum.test(mean.x = 14.6,s.x = 2.5,n.x= 35,alternative = "two.sided", mu=15.4, conf.level = 0.95, var.equal = TRUE )

tsum.test(mean.x = 14.6,s.x = 2.5,n.x= 35,alternative = "less", mu=15.4, conf.level = 0.95, var.equal = TRUE )

tsum.test(mean.x = 14.6,s.x = 2.5,n.x= 35,alternative = "greater", mu=15.4, conf.level = 0.95, var.equal = TRUE )

tsum.test(mean.x = 10, s.x = 0.1,n.x= 100,alternative = "two.sided",mu=8, conf.level = 0.95, var.equal = TRUE )


T=((14.6-15.4)/(2.5)/(sqrt(35)))
t.alpha=qt(1-0.005, df=34)

#   3. Suppose the manufacturer claims that the mean lifetime of a light bulb is more than
# 10,000 hours. In a sample of 30 light bulbs, it was found that they only last 9,900 hours
# on average. Assume the sample standard deviation is 125 hours. At .05 signicance
# level, can we reject the claim by the manufacturer?

tsum.test(mean.x = 9900, n.x = 30, mu=10000, s.x = 125, alternative = "less", var.equal = TRUE)
#ker je p zelo majhen H0




#   4. Suppose the food label on a cookie bag states that there is at most 2 grams of saturated
# fat in a single cookie. In a sample of 35 cookies, it is found that the mean amount of
# saturated fat per cookie is 2.1 grams. Assume that the sample standard deviation is
# 0.3 gram. At .05 signicance level, can we reject the claim on food label?


tsum.test(n.x=35, mean.x=2.1, mu=2, s.x=0.3, alternative = "greater", conf.level = 0.95, var.equal = TRUE)






#   5. Simulation:
#2.12.2021
#   (a) Simulate a sample of size n from normal distribution with some chosen parameters
# for n = 10 and n = 80.

mu<-40
sigma<-20
n1<-10
n2<-80
B<-100


stand1<-rep(NA,B)
stand2<-rep(NA,B)

x<-c(1:B)
for (val in x){
  vzorec<-rnorm(n2,mu,sigma)
  m<-mean(vzorec)
  std<-sd(vzorec)
  std
  
  #standardization regarding population sd
  stand1[val]<-sqrt(n)*(m-mu)/sigma
  
  #standardization regarding sample sd
  stand2[val]<-sqrt(n)*(m-mu)/std
}

hist(stand1)
hist(stand2)


# (b) Compute the sample mean and sample standard deviation.
#napake pri testih
#               VELJA H0                       H0 NE VELJA
# H0 OBDRZIMO   NI NAPAKE                  NAPAKA II. VRSTE-BETA
# H0 ZAVRNEMO  NAPAKA 1. VRSTE-ALPHA           NI NAPAKE
#

library(pwr)
#pred raziskavo se uprasamo kaksn bo alfa in kaksen bo na za dolocen power.

#H0 mu pred-mu po =5
#H1 mu pred-mupo != 5
#d=(0-5)/5=-1
pwr.t.test(d=((0-5)/5), sig.level = 0.05, type = "paired", power = 0.8, alternative = "two.sided")
#potrebujemo vsaj 10 ljudi
#ce vzamemo vecjo moc- beta bo manjsi-torej zelimo imeti manjso napako
pwr.t.test(d=((0-5)/5), sig.level = 0.05, type = "paired", power = 0.85, alternative = "two.sided")

pwr.t.test(d=((0-5)/5), sig.level = 0.05, type = "paired", power = 0.9, alternative = "two.sided")
#ce alfo zmanjsamo-zmanjsamo napako alfo- bomo potrebevali vec ljudi 
pwr.t.test(d=((0-5)/5), sig.level = 0.01, type = "paired", power = 0.8, alternative = "two.sided")

#ce zelimo power
pwr.t.test(n=35, d=((0-5)/10), sig.level = 0.01, type = "paired", alternative = "two.sided")

#less
pwr.t.test(n=35,d=((0-5)/10), sig.level = 0.01, type = "paired", alternative = "less")


# (c) Standardize the sample mean with respect to population standard deviation and
# sample standard deviation (two examples).




# (d) Repeat B times and show the distribution of the standardized random variable.
# Compare the two distributions.








