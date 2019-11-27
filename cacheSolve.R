cacheSolve <- function(x, ...) {
  
  #get the value of the invertible matrix from the makeCacheMatrix function
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {                       #if inverse matrix is not NULL
    message("Getting Cached Invertible Matrix")   #Type message: Getting Cached Invertible Matrix 
    return(invMatrix)                             #return the invertible matrix
  }
  
  #if value of the invertible matrix is NULL then  
  MatrixData <- x$getMatrix()                     #get the original Matrix Data 
  invMatrix <- solve(MatrixData, ...)             #use solve function to inverse the matrix
  x$setInverse(invMatrix)                         #set the invertible matrix 
  return(invMatrix)                               #return the invertible matrix
  ## Return a matrix that is the inverse of 'x'
}
