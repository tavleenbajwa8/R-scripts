#Binomial Distribution

n = 10  #no of trials
p = 0.5 #Probability of success in each trial
x = 3   #Number of successes

#Probability density function

##dbinom(x,n,p) returns the binomial probability for x successes in n trials, where p is the probability of successes in a single trial 

binomial_prob = dbinom(x,n,p)
print(paste("Binomial probability for (",x,",",n,",",p,") = ", binomial_prob))
      
      
##pbinom(x,n,p) returns Cumulative probability for a binomial distribution from 0 to x.

cumulative_prob = pbinom(x,n,p)
print(paste("Cumulative probability(P-value) for (",x,",",n,",",p,") = ", cumulative_prob))

##qbinom(cumulative probability,n,p) returns x value corresponding to a cuulative probability

x_value = qbinom(cumulative_prob, n, p)
print(paste("x value corresponding to the given cumulative binomial probablity = ", x_value))


##rbinom(m,n,p) returns m random deviates from a Binomial distribution of given (n,p)
deviates = rbinom(6, n, p)
print(paste("6 Binomial deviates are: "))
print(deviates)

par(mfrow = c(2,1))


###Graphs

#Plot Binomial density distribution using dbinom()

n = 10
p = 0.4
x = seq(0,10)
pdens = dbinom(x,n,p)

plot(x,pdens,type='h', col="purple", xlab = "Binomial variable x", ylab = "Binomial Probability", main= "Binomial probability distribution")



#Plot frequency histogram of Binomial deviates using rbinom()

n = 10
p = 0.5
xdev = rbinom(10000, n, p)
plot(table(xdev), type = "hist", col="purple", xlab = "Binomial variable x", ylab = "Frequency", main = "Frequency distribution of Binomial Random Deviates")

