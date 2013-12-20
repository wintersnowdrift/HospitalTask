# This script locates one hospital
#source("DataPreparation.R")

oneHospital <- function(network,population)
{
  # Calculate column sums
  dataPop <- network*population
  col.sums <- apply(dataPop, 2, sum)
  locPop <- cbind(col.sums,node=seq(1:1579))
  locPop <- as.data.frame(locPop)
  
  # Find minimum value
  minnode <- which(locPop$col.sums == min(locPop$col.sums)) 
  
  #Return soluton
  return(locPop$col.sums[minnode])
}

itShouldReturnMinDinstanceFor1Hospital <- function()
{
  sol <- oneHospital(data,po)
  #print(sol)
}

itShouldReturnMinDinstanceFor1Hospital()

# Average distance per person
(oneHospital(data,po)/1000)/sum(po)
# Same node as Meng but different distance

