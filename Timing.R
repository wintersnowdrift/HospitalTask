# This file times different functions of the SA algorithm'
rm(list=ls())
source("DataPreparation.R")
source("SimulatedAnnealingAlgorithm.R")

s <- c(50,1000) #initial nodes
N <- ncol(data) #number of nodes

#Time functions
system.time(energy(s,network=data,population=po)) 
#Energy takes 4.7 sec... :P
#Energy now takes 0.19 sec

system.time(neighbour(s,N,grannar=1)) #Neighbour takes 0 sec

system.time(P(15011,1/10)) #P takes 0 sec

system.time(sa(network=data,population=po,p=2,grannar=1,tmax=1)) #SA takes engergy*2 sec, i.e. 9.44 sec