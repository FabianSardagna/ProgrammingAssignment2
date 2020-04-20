## Functions that chache the inverse of a matrix

## This create a special matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <-NULL
  
  set <- function(y){
    matrix <<- y
    inverse <<- NULL
  }
  
  get <- function() matrix
  set_inverse <- function(inv) inverse <<- inv
  get_inverse <- function() inverse
  list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## returns the inverse matrix returned by function above.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <- special_matrix$get_inverse()
  if(!is.null(inverse)) {
    message("getting cache data")
    return(inverse)
  }
  
  data <- special_matrix$get()
  inverse <- solve(data, ...)
  special_matrix$set_inverse(inverse)
  inverse
}
