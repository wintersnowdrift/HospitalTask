# This scripts find solutions through simulated annealing
# This scripts finds random solutions
source("DataPreparation.R")
source("SimulatedAnnealingAlgorithm.R")

# Data for network = data
# Data for population = po

# Two hospitals
set.seed(666)
two_sa <- sa(network=data,
          population=po,
          p=2,
          grannar=1,
          tmax=10000)

# Three hospitals
set.seed(666)
three_sa <- sa(network=data,
             population=po,
             p=3,
             grannar=1,
             tmax=10000)

# Five hospitals
set.seed(666)
five_sa <- sa(network=data,
             population=po,
             p=5,
             grannar=1,
             tmax=10000)

# Ten hospitals
set.seed(666)
ten_sa <- sa(network=data,
             population=po,
             p=10,
             grannar=1,
             tmax=100)

# Table
library(plyr)
comb_sa <- rbind.fill(as.data.frame(t(two_sa)), 
                   as.data.frame(t(three_sa)), 
                   as.data.frame(t(five_sa)), 
                   as.data.frame(t(ten_sa)))
colnames(comb_sa) <- c("Distance","Node1", "Node2", "Node3", "Node4", "Node5",
                    "Node6", "Node7", "Node8", "Node9", "Node10")

#Table with distance and nodes
#Distance in km/person
comb_sa[1] <- comb_sa[1]/1000/sum(po)

comb_sa

