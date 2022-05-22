#Gaussian/Normal Distribution

#Four functions are provided in R for computing various quantities related to Gaussian distribution
#dnorm(Z), rnorm(n), qnorm(p), pnorm(Z)

#dnorm(Z): Returns Gaussian density Z on a unit normal ditribution
#rnorm(n): Return n random deviated unit normal curve
#pnorm(Z): Return P-value(cumulative probability) from minus infinity to Z
#qnorm(p): Return Z-value corresponding to cumulative probability p.

#Z = Gaussian Z variable
#mean = Mean of Gaussian distribution
#sd = Standard deviation of the Gaussian distribution





mean = 12 #mean of Gaussian
sd = 2.0  #Standard deviation
x = 14.0  #Gaussian variable

#Probability density function 

##dnorm(x,mu,sigma) returns Gaussian probability density for given x,mu,sigma

gauss_density = dnorm(x,mean,sd)
gauss_density = round(gauss_density, digits = 3)
print(paste("Gaussian probability for (",x, ",",mean, ",", sd,") = ", gauss_density))



##dnorm(Z) returns a probability density for a given Z in unit Gaussian

Z = 2.0
unit_norm = dnorm(Z)
unit_norm = round(unit_norm, digits = 3)
print(paste("Unit Gaussian probability for Z = ",Z, " is ", unit_norm))

##Plotting the Gaussian curve in the x range of (mu-4*sigma, mu+4*sigma)
mean = 12
sd = 2
x = seq(mean - 4*sd, mean + 4*sd, 100)
string = substitute(paste("N( x, ", mu, " = 12, ", sigma, " = 2 ", ")"))

curve(dnorm(x, mean, sd), xlim=c(mean - 4*sd, mean + 4*sd), ylab = string, lwd = 1.5, cex.lab=1.2, col="blue", main="Gaussian distribution")

##Plotting Unit Gaussian/Standard Normal distribution curve
mean = 0
sd = 1
x = seq(mean - 4*sd, mean + 4*sd, 100)
string = substitute(paste("N( Z, ", mu, "= 0, ", sigma, " = 1 ", ")"))
curve(dnorm(x, mean, sd), xlim=c(mean - 4*sd, mean + 4*sd), xlab = "Z", ylab = string, lwd = 1.5, cex.lab = 1.2, col="red", main="Unit Normal distribution")



#pnorm: To generate cumulative probability (P-value) above upto a Z value in a unit Gaussiam

##pnorm(Z) generates cumulative probability from minus infinity to Z
##When Z is +ve, Probability above Z is 1-pnorm(Z)
##when Z is -ve, Probability below Z is pnorm(Z)

Z = 2.6
pvalue = pnorm(Z)
pvalue1 = round(pvalue, 3)
print(paste("Cumulative probability from Z = minus infinity to ", Z, "is ", pvalue1))

Z = -2.6
pvalue = pnorm(Z)
pvalue2 = round(pvalue,3)
print(paste("Cumulative probability from Z = minus infinity to ", Z, "is ", pvalue2))


#qnorm: Generating Z value for a Cumulative probability is p

##qnorm(p) returns Z value at which cumulative probability is p

p = 0.95  ##Cumulative probability from minus infinity to Z
Z = qnorm(p)
Z = round(Z, digits=3)
print(paste("Z-value for a cumulative probaility p = ", p, "is ", Z))


#rnorm: Generating random deviates from a Gaussian
#rnorm(n,mean,sd): Returns a vector of n random deviates from a Gaussian distribution N(mean,sd)
#rnorm(n): Returns a vector of n random deviates from a Gaussian N(0,1)

ndev = rnorm(4, mean = 15, sd = 3)
ndev = round(ndev,3)
print("Four Gaussian deviates from N(15,3) : ")
print(ndev)


#Plotting the histogram of 10000 random deviates from unit Gaussian

hist(rnorm(10000), breaks = 30, col = "purple", main = "Histogram of Gaussian distribution")