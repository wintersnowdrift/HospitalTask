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
#Energy now takes 0... wii!

system.time(neighbour(s,N,grannar=1)) #Neighbour takes 0 sec

system.time(P(15011,1/10)) #P takes 0 sec

system.time(sa(network=data,
               population=po,
               p=2,
               grannar=1,
               tmax=1000)) 
#SA takes engergy*2 sec, i.e. 9.44 sec
#SA takes 0.14 sec for 1 iteration
#SA takes 0.2 for 100 iterations
#SA takes 0.47 for 1000 iterations

system.time(sa(network=data,
               population=po,
               p=10,
               grannar=1,
               tmax=1000)) 
#SA takes 2.35 for p=10 and 1000 iterations (5x the time of p=2)
