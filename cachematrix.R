library(MASS)

## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix consists of set, get, setinv and getinv 

makeCacheMatrix <- function(x = matrix()) {
# inverse as NULL
inv <- NULL  
set <- function(y) {
  x <<- y
  inv <<- NULL
}
# function to get matrix x 
get <- function()x
setinv <- function(inverse)inv<<-inverse
getinv <- function(){
  inver <- ginv(x)
  inver%*%x  
  }

list(set=set, get=get, setinv=setinv, getinv=getinv)
}
## Write a short comment describing this function.
## used to get chache data

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
  ## return a matrix that is the inverse of x 
} 

  
