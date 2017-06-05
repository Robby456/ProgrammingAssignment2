## Put comments here that give an overall description of what your
## functions do

## Short comment describing this function:

Function creates a matrix object and enables cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
       
       inv <- NULL
       set <- function(y){
           x <<- y
           inv <<- NULL
       }
       
       get <- function()x
       setinverse <- function(inverse) inv <<- inverse
       getinverse <- function() inv
       list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Short comment describing this function:

Function computes inverse of matrix. 
If the inverse has already been calculated then solution should be retrieved from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        inv <- x$getInverse()
        if(!is.null(inv)){
           
           message("Receiving cached data")
           return(inv)
        }
        
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
