#t distribution

#Probability density function
n = 10    #Sample size
df = n-1  #Degrees of freedom (Sample size -1)
t = 2.5   #t-variable of t distribution

#dt(t,df) Probability density at t on a t distribution curve

t_density = dt(t,df)
t_density = round(t_density, digits = 2) #Rounding up upto 2 digits
print(paste("Probabilty density for t = ", t, " and degrees of freedom = ", df, " is ", t_density))


#Curve of t distribution probability density

x = seq(-5,5,0.1)
df = 10
string = "P(t, df=10)"

curve(dt(x, df), xlim = c(-5,5), xlab='t', ylab = string, lwd=1.5, cex.lab=1.2, col="blue", main="Student's t distribution")


#P-value(Cumulative probability) above upto a t-value in a t distribution

#pt(t,df): P-value from -infinity to t 
#When t is +ve, Probability above t is 1-pt(t)
#When t is -ve, Probability below -t is pt(t)


df = 10
t = 2.6
pvalue = pt(t,df)
pvalue1 = round(pvalue,3)
print(paste("Cumulative probability from t = minus infinity to ", t, "is ", pvalue1))

t = -2.6
pvalue = pt(t,df)
pvalue2 = round(pvalue,3)
print(paste("Cumulative probability from t = minus infinity to ", t, "is ", pvalue2))


#t-value for a cumulative probability p

#qt(p,df): Returns t-value at which cumulative probability(P-value) is p

p = 0.95
t = qt(p,df)
t = round(t, digits=3)
print(paste("t value for a cumulative probability p = ", p, "is ", t))


#Generating randome deviates from t-distribution with df=10

#rt(m,df): Returns a vector of m ramdom deviates from a t of given df

ndev = rt(4, df)
ndev = round(ndev, digits=3)
print("Four random deviates from t distribution with 1 degrees of freedom: ")
print(ndev)

#Plot histogram of 10000 random deviates from unit Gaussian:
hist(rt(100000, df), breaks=40, xlim = c(-6,6), ylim = c(0, 2000), col= "pink", main= "Histogram of t-deviates")