## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function gives the matrix for which the inverse is to be calculated. Also,
## it is a pointer to other setters and getters required.

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y){
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(myinverse) i <<- myinverse
    getinverse <- function() i
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This function checks whether the inverse for the input matrix has been found
## already. If yes, then it fetches the inverse from the list obtained from the function
## makeCacheMatrix(). If no, then it calculates the inverse of the input matrix and
## returns the inverse matrix.

cacheSolve <- function(x, ...) {
    i <<- x$getinverse()
    if (!is.null(i)){
        message("Fetch data from cache")
        return(i)
    }
    mydata <- x$get()
    i <- solve(mydata)
    i
        ## Return a matrix that is the inverse of 'x'
}
