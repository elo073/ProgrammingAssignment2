## Put comments here that give an overall description of what your
## functions do

## My functions take the input (inversible matrix), cache it's inverse 
## and return it. 

 

## Write a short comment describing this function

## My first funcion is called makeCacheMatrix. This function takes a matrix
## object and caches its inverse. The function produces a list containing 
## functions for cacheing.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)

}


## Write a short comment describing this function

## My second function is cacheSolve. This function looks for the inverse of x,
## and returns it, if already calculated. If not calculated, then this function
## calculates and returns the inverse of matrix from makeCacheMatrix.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        
        ## Return a matrix that is the inverse of 'x'
        i
}
