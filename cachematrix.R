## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function (x = matrix()) {

        I <- NULL
        set <- function(y = matrix()) {
                x <<- y
                I <<- NULL
        }
        get <- function() x
        setinv <- function(solve) I <<- solve
        getinv <- function() I
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
        
              
}


## Write a short comment describing this function

## this function only works for 2 X 2 matrix

## I have been trying to find a function that can find inverse of a matrix 3 X 3

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        I <- x$getinv()
        if(!is.null(I)) {
                message("getting cached data")
                return(I)
        }
        data <- x$get()
        I <- solve(data, ...)
        x$setinv(I)
        I

                
}

