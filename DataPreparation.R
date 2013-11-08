# This file imports and prepares data
rm(list=ls())
source("multiplyDataWithRow.R")

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

# Multiply data with population
dataPop <- multiplyDataWithRow(data,po)

# Check data
#dataPop[1:10,1:10]
#data[1:10,1:10]
#pop[1:10,2]
# Data OK