# This file imports and prepares data
rm(list=ls())
#source("multiplyDataWithRow.R") don't need it anymore

# Network distances
data <- read.table("//dustaff/home/kss/Documents/Complexity/PascalsProject/network distance.txt", 
                   header=T)

# Population
pop <- read.table("//dustaff/home/kss/Documents/Complexity/PascalsProject/population.txt", 
                  header=T)

# Check data
#pop[1:10,]
#data[1:10,]

# Extract population as a single vector
po <- pop[2]
po <- as.numeric(as.character(po[,1]))

rm("pop")
