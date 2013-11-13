# This function picks a solution at random
randomMethod <- function(network,population,n,p){
  n <- n #sample size
  p <- p #number of hospitals to place
  N <- ncol(network) #total number of nodes
  
  #matrix to store results
  storage <- matrix(0,nrow=n,ncol=(p+1)) 
  
  for(i in 1:n){
    samp <- sample(1:N,p,replace=FALSE) #sample
    
    # Find minimum solution
    mindist <- network[,samp[1]]
    for(j in 2:length(samp)){
      mindist <- pmin(mindist,network[,samp[j]])
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
  print(res)
}

itShouldReturnMinDistance()


# Test of 10 nodes
itShouldReturnMinDistanceOf10 <- function(){
  d <- data.frame(col=matrix(runif(12*4,1,100),
                             ncol=12,nrow=4))
  po <- c(10,20,30,10)
  
  res <- randomMethod(network=d,population=po,
                      n=10,p=10)
  #print(res)
}

itShouldReturnMinDistanceOf10()




