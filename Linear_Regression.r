#In R, the function lm() performs the linear regression of data between two vectors 
#It has options for weighted and non-weighted fits

#The function call with essesntial parameters is of the form,

#  lm(formula, data, subset, weights)

#Formula: Formula used for the fit, In case of linear we use "y~x"
#data: Data frame with x and columns for data
#subset: Optional vector for specifying subset of data to be used.
#weights: Optional vector with weights of fits to be used.


#Part-A: Straight line fit without errors

## Define 2 datasets as vectors 

xdat = c(1,2,3,4,5,6,7,8,9,10)
ydat = c(16.5, 23.3, 35.5, 45.8, 57.9, 68.0, 73.4, 89.0, 97.9, 107.0)

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

#Plot the results: First Plot data points and then x versus fitted y

plot(xdat, ydat, col='red')
lines(xdat, dat$fitted.values, col='blue')


#Residual plots 
plot(dat)

#------------------------------------------------------

##Part B : Fit with errors (weights) on individual data points 

#Define data vectors
xdat = c(1,2,3,4,5,6,7,8,9,10)
ydat = c(16.5, 23.3, 35.5, 45.8, 57.9, 68.0, 73.4, 89.0, 97.9, 107.0)

#Errors on data points. Vector of errors on each y value

errors = c(3.0, 4.1, 5.0, 5.5, 6.0, 6.2, 1.0, 1.0, 1.0, 1.0)

##Create dataframe with x,y point and error

df = data.frame(x = xdat, y=ydat, err=errors)

##Function call for lm()
data = lm(y~x, data = df, weight = 1/df$err)

print(data)

#11()

# plot the results
plot(xdat,ydat,col="red")
lines(xdat, data$fitted.values, col="blue")
## draw error bars on individual data points
arrows(xdat, ydat-errors, xdat, ydat+errors, length=0.05, angle=90, code=3)



