## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function(matrix = matrix()) { 
    
    inverse <- NULL 
    
    setMatrix <- function(y) {
        matrix <<- y
        inverse <- NULL
    }
    
    setInverse <- function(inv) {
        inverse <<- inv
    }
    
    getMatrix <- function() {
        matrix
    }    
    
    getInverse <- function() {
        inverse
    } 
    
    list(setMatrix=setMatrix, getMatrix=getMatrix, setInverse=setInverse, getInverse=getInverse)
}

## Write a short comment describing this function
cacheSolve <- function(matrix, ...) { 
    
    theInverse <- matrix$getInverse() 
    
    if(!is.null(theInverse)) {
        message("Getting cached data")
        return(theInverse)
    }   
    
    theMatrix <- matrix$getMatrix()
    theInverse <- solve(theMatrix, ...)
    matrix$setInverse(theInverse)
    theInverse
    ## Return a matrix that is the inverse of 'x'
}