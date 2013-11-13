# This scripts finds random solutions
rm(list=ls())
source("DataPreparation.R")
source("RandomMethod.R")

# Data for network = data
# Data for population = pop

# Two hospitals
set.seed(1000)
two_r <- randomMethod(network=data,
                    population=po,
                    n=10000,
                    p=2)

# Three hospitals
set.seed(1000)
three_r <- randomMethod(network=data,
                      population=po,
                      n=10000,
                      p=3)

# Five hospitals
set.seed(1000)
five_r <- randomMethod(network=data,
                     population=po,
                     n=10000,
                     p=5)

# Ten hospitals
set.seed(1000)
ten_r <- randomMethod(network=data,
                    population=po,
                    n=10000,
                    p=10)

# Table with results
library(plyr)
comb <- rbind.fill(as.data.frame(t(two_r)), 
                   as.data.frame(t(three_r)), 
                   as.data.frame(t(five_r)), 
                   as.data.frame(t(ten_r)))
colnames(comb) <- c("Distance","Node1", "Node2", "Node3", "Node4", "Node5",
                    "Node6", "Node7", "Node8", "Node9", "Node10")

#Table with distance and nodes
comb