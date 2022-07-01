#Part-A: Straight line fit without errors

## Define 2 datasets as vectors 

xdat = c(18, 13, 18, 15, 10, 12, 8, 4, 7, 3)
ydat = c( 23, 20, 18, 16, 14, 11, 10, 7, 6, 13 )

#Create a dataframe of vectors 
df = data.frame(x= xdat, y=ydat)

##  function call for lm(). Here,x~y represents a linear relationship "y = a0 + a1 x "
#    (Use y~x-1 if you dont want intercept)

dat = lm(y~x, df)


#Printing fitted results

#Intercept
print(paste("Intercept = ", dat$coefficients[1]))

#Slope
print(paste("Slope = ", dat$coefficients[2]))

#Fitted values
print(dat$fitted.values)

#To see 95% confidence interval
confint(dat, level= 0.95)

#A summary of entire analysis 
print(summary(dat))

#Eqn

#eqn = 

#Calculate Root mean square error in and other values

rmse <- round(sqrt(mean(resid(dat)^2)), 2)
coefs <- coef(dat)
b0 <- round(coefs[1], 2)
b1 <- round(coefs[2],2)
r2 <- round(summary(dat)$r.squared, 2)

#Building equation 
eqn <- bquote(italic(y) == .(b0) + .(b1)*italic(x) * "," ~~ 
                r^2 == .(r2) * "," ~~ RMSE == .(rmse))




#Plot the results: First Plot data points and then x versus fitted y

plot(xdat, ydat, col='red')
lines(xdat, dat$fitted.values, col='blue')

text(5, 23, eqn, pos = 4)



