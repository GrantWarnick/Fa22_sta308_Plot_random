########################
## Plot Random Funtion.r
##
## Grant Warnick
##
## Purpose
## A funtion that will generate a Random sample of normal values , plot a histogram with an overlaid mean on the plot 
## and retuns summary stats about the generated data.
##
##Imputs:
## numpts- the number of points to generate, defults to 50 
## bins - the number of breakpoints in the hist() funtion, defults to 10
## mu - the mean
## Sigma - standard deviation of the Normal distribution, defults to 1 
## Seed seed for the randum nuber generator but the uster can overide the value
##
##Outputs :
## A list is returned with the following elements 
## Random_Sample = the generated radom sample
## MeanSample = the mean of the random sample
## SDSample= the standerd deviation of the random sample
##

library(tidyverse)
plotRandomNormals<- function(numpts=50, Bins=10 ,
                            mu=0, simga=1,
                            seed=NULL){
  set.seed(seed)
  rand_sample<- rnorm(numpts,mean=mu,sd=sigma)
  hist(rnorm(rand_sample), breaks=Bins+1)
  abline(v=mean(rand_sample),col="blue")
  list(Randomsample=rand_sample,MeanSample=mean(rand_sample),SDSample=sd(rand_sample))
}
## Defult values
plotRandomNormals()

##User specified num of points
plotRandomNormals(numpts = 1000, Bins = 200)

plotRandomNormals(numpts = 1000, Bins = 50, mu=63.5, simga = 4.5)
