# 1. Razi²£ite pomen ukazov dnorm, pnorm, qnorm, rnorm.

# dnorm-density


# pnorm -distribucijska funkcija
# qnorm  
# rnorm -iz normalne porazdelitve bo vzel nakljucno stevilo n vzorcev- stevila okoli nicle
#so veliko bolj be++verjetne. Pricakujemo da bo 2/3 vrednosti med -1 in 1 podatkov.


# 2. Nari²ite tabelo porazdelitvene funkcije standardno normalne porazdelitve 
#(tako, ki smo jo uporabljali na vajah).
y<-seq(0,4,0.01)
pnorm(y)


# 3. Nari²ite graf gostote standardno normalne porazdelitve. Nati²ite ²e graf porazdelitvene
# funkcije standardno normalne porazdelitve.
#gostota standardne normalne porazdelitve-gausova krivulja
z<-seq(-3,3,0.2)
plot(dnorm(z,0))


#porazdelitvena funkxija je narascujoca
plot(pnorm(y,0))

# 4. S pomo£jo ukaza rnorm kreirajte 10, 100 in 10000 naklju£nih ²tevil na podlagi normalne 
#porazdelitve z izbranima parametroma µ in ?? in nari²ite histograme dobljenih
# podatkov.

#10

n10<-rnorm(10, mean = 1200, sd=200)
hist(n10, breaks = 5)

#100
n100<-rnorm(100, mean = 1200, sd=200)
hist(n100, breaks = 20)

#1000
n1000<-rnorm(1000, mean = 1200, sd=200)
hist(n1000, breaks = 100)


# 5. Razi²£ite pomen ukazov qqnorm in qqplot.
#qqnorm-kvartili iz normalne porazdelitve na drugi osi
qqnorm(trees$Height)

# 6. V R-u so shranjeni podatki trees za 31 dreves £rne £e²nje. 
#Ena od spremenljivk je tudi
trees
qqnorm(trees$Height)
#preverimo ali so nasi podatki izmed ene od porazdelitev-ce je linearna potem je porazdelitev
qqplot(qnorm(ppoints(30)),qchisq(ppoints(30), 3))
#ker smo vzeli dve razlicni porazdelitvi funkcija ne sme biti linearna


# vi²ina (Height). S pomo£jo ukaza qnorm preverite ali so podatki trees$Height skladni
# z normalno porazdelitvijo.
qqplot(qnorm(trees$Height),dnorm(z,0))


# 7. S pomo£jo ukaza help(Distributions) izberite eno porazdelitev in jo z ukazom qqplot
# primerjajte z normalno porazdelitvijo. Kako bi interpretirali rezultat?



#   8. Tvorite poro£ilo R markdown.