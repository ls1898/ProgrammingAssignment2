## Put comments here that give an overall description of what your
## functions do

## This function creates a list of functions to run 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- funtion(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setsolve <- funtion(solve) inv <<- solve
  getsolve <- funtion() inv
  list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

}


## If an inverse matrix for the matrix entered exists - the function returns the cached data for it,
## Otherwise - the function calculates the inverse matrix and returns it.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getxolve()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setsolve(inv)
  inv
}
