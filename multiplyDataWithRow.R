# This function multiplies a data frame with a column
# from another dataframe

multiplyDataWithRow <- function(dat,col){
  aggdata <- dat*col
  return(aggdata)
}

itShouldMultiplyDataWithRowElement <- function(){
  dat <- data.frame(one=c(1,2,3,4),
                     two=c(1,2,3,4),
                     three=c(1,2,3,4))
  col <- c(2,2,2,2)
  
  gold <- data.frame(one=c(2,4,6,8),
                     two=c(2,4,6,8),
                     three=c(2,4,6,8))
  
  newdat <- multiplyDataWithRow(dat,col)
  
  stopifnot(newdat == gold)
  print("OK")
}

itShouldMultiplyDataWithRowElement()