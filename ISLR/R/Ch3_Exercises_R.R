library(ISLR2)
library(ggplot2)
#This problem involves the Boston data set, which we saw in the lab
#for this chapter. We will now try to predict per capita crime rate
#using the other variables in this data set. In other words, per capita
#crime rate is the response, and the other variables are the predictors.

#(a) For each predictor, fit a simple linear regression model to predict
#the response. Describe your results. In which of the models is
#there a statistically significant association between the predictor
#and the response? Create some plots to back up your assertions.
fits = list()

for(i in 2:length(names(Boston))){
  resfit1 = lm(paste0("crim ~ ",names(Boston)[i]), Boston)
  b = summary(resfit1)
  fits[names(Boston)[i]] <- b$coefficients[2,4]
}

plot = ggplot(Boston, aes(y=crim))
plot = plot + geom_point(aes(paste0("x=",names(Boston[i]))))

