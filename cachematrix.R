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
getinv <- function() {
  inver <- ginv(x)
  inver%*%       #function to obtain inverse of the matrix
}

list(set=set, get=get, setinv=setinv, getinv=getinv)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
}
