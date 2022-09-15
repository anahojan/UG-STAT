#lab vaje 10 
#moc testa za dve neodvisni spremenljivki
install.packages("pwr")

library("pwr")



# . A clinical dietician wants to compare two dierent diets, A and B, for diabetic patients.
# She hypothesizes that diet A (Group 1) will be better than diet B (Group 2), in terms
# of lower blood glucose. She plans to get a random sample of diabetic patients and
# randomly assign them to one of the two diets. At the end of the experiment, which
# lasts 6 weeks, a fasting blood glucose test will be conducted on each patient. She also
# expects that the average dierence in blood glucose measure between the two group
# will be about 10 mg/dl. Furthermore, she also assumes the standard deviation of
# blood glucose distribution for diet A to be 15 and the standard deviation for diet B
# to be 17. The dietician wants to know the number of subjects needed in each group
# assuming equal sized groups.

s<-sqrt((15^2+17^2)/2)

pwr.t.test(d=(0-10)/16.03, power=0.8, sig.level=.05, type="two.sample", 
           alternative="two.sided")
#potrebujemo n=41 v vsaki skupini v vzorec za pwr 0.8

pwr.t.test(d=(5-15)/16.03, n=30,  sig.level=.07, type="two.sample", 
           alternative="two.sided")
#dobimo ena
#How can be the number of subjects decreased?
#ce povecamo alfo povecamo napako - nase zaupanje se zmanjsa- 

#ce pricakujemo majhno razliko potrebujemo vecji vzorec


pwr.t.test(d=(0-5)/16.03, power=0.8, sig.level=.05, type="two.sample", 
           alternative="two.sided")
#n=162


#d=(mu_1-mu2)/sqrt((s_1^2+s_2^2)/2) <- this is called effect size
#razlika povprecji/skupni s

ptab<-cbind(NULL,NULL)

for (i in c(0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2)){
  pwrt<-pwr.t.test(d=i, power=.8,sig.level = .05,
                   type = "two.sample",alternative = "two.sided")
  
  ptab<-rbind(ptab,cbind(pwrt$d,pwrt$n))
}

ptab



##plot power versus sample size
#vecji kot je vzorec vecji bo pwr-narascujoca funkcija

pwrt<-pwr.t.test(d=.7,n=c(10,20,30,40,50,60,70,80,90,100),sig.level = .05, 
                 type = "two.sample", alternative = "two.sided")

plot(pwrt$n,pwrt$power,type= "b", xlab="Sample size", ylab="Power")