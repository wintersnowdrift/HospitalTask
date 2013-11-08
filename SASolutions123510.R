# This scripts find solutions through simulated annealing
# This scripts finds random solutions
rm(list=ls())
source("DataPreparation.R")
source("SimulatedAnnealingAlgorithm.R")

# Data for network = data
# Data for population = pop

# Two hospitals
two_sa <- sa(network=data,
          population=pop,
          p=2,
          grannar=1,
          tmax=10,
          emax=1000)