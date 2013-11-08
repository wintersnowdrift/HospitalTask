# This function picks a solution at random
randomMethod <- function(network,population,n,p){
  n <- n #sample size
  p <- p #number of hospitals to place
  N <- ncol(network) #total number of nodes
  
  #Vector to store minimum distances from population node
  #to hospital node
  mindist <- rep(0,nrow(network))
  
  #matrix to store results
  storage <- matrix(0,nrow=n,ncol=(p+1)) 
  
  for(i in 1:n){
    samp <- sample(1:N,p,replace=FALSE) #sample
    
      for(j in 1:nrow(network)){
      #Go through every row and find which hosptital
      #that row has a minimum distance to
      mindist[j] <- min(network[j,samp])
      }
    
    #Minimum distance * population
    mindistpop <- mindist*population
    
    #Distance of solution
    solutionsum <- sum(mindistpop)
    
    #Store minimun distance and node
    storage[i,] <- cbind(solutionsum,rbind(samp))
  }
  val <- which(storage[,1] == min(storage[,1])) #find minimum distance
  return(storage[val,])
}

# Test of two nodes
itShouldReturnMinDistance <- function(){
  d <- data.frame(col=matrix(c(10,20,55,66,
                               77,88,99,11,
                               40,30,21,9,
                               66,77,12,14),
                             ncol=4,nrow=4))
  po <- c(10,20,30,10)
                  
  res <- randomMethod(network=d,population=po,
                      n=10,p=2)
  #print(res)
}

# Test of 10 nodes
itShouldReturnMinDistanceOf10 <- function(){
  d <- data.frame(col=matrix(runif(12*4,1,100),
                             ncol=12,nrow=4))
  po <- c(10,20,30,10)
  
  res <- randomMethod(network=d,population=po,
                      n=10,p=10)
  #print(res)
}

itShouldReturnMinDistance()

itShouldReturnMinDistanceOf10()




