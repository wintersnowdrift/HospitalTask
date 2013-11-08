# This scripts finds random solutions
rm(list=ls())
source("DataPreparation.R")
source("RandomMethod.R")

# Data for network = data
# Data for population = pop

# Two hospitals
set.seed(1000)
two <- randomMethod(network=data,
                    population=pop,
                    n=10,
                    p=2)

# Three hospitals
three <- randomMethod(network=data,
                      population=pop,
                      n=10000,
                      p=3)

# Five hospitals
five <- randomMethod(network=data,
                     population=pop,
                     n=10000,
                     p=5)

# Ten hospitals
ten <- randomMethod(network=data,
                    population=pop,
                    n=10000,
                    p=10)

# Table
library(plyr)
comb <- rbind.fill(as.data.frame(t(two)), 
                   as.data.frame(t(three)), 
                   as.data.frame(t(five)), 
                   as.data.frame(t(ten)))
colnames(comb) <- c("Distance","Node1", "Node2", "Node3", "Node4", "Node5",
                    "Node6", "Node7", "Node8", "Node9", "Node10")

#Table with distance and nodes
comb