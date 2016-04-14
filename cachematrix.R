## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#1. set and get the value of matrix
#2. set and get the value of inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
}


## Write a short comment describing this function
#This function will returns the inverse of matrix.
#if inverse of matrix is already computed then it will display it
#otherwise it will compute it. and sets the value of inverse via setinverse function


cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
