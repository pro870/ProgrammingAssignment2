
## function that solves and cache the inverse of a square matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                           # its NULL at first, the cacheSolve function checks this to see if it solve the matrix or retrive the cached one 
        set <- function(y) {     # this function set the value of x to an object with the special operator in a diferrent enviroment fromthe current
                x <<- y                
                m <<- NULL          
        }
        get <- function() x                            #returns x
        setmatinverse <- function(solve) m <<- solve   # does the inverse of the matrix
        getmatinverse <- function() m                  
        list(set = set, get = get,
             setmatinverse = setmatinverse,
             getmatinverse = getmatinverse)
}



## Return a matrix that is the inverse of 'x' or the cache matrix if it is already solved

cacheSolve <- function(x, ...) {
        m <- x$getmatinverse()           # as describe on top, this checks for the variable m if its NULL or not
        if(!is.null(m)) {
                message("getting cached matrix")   
                return(m)                         # if not, it return the cache matrix
        }
        data <- x$get()
        m <- solve(data, ...)             #this part solve the matrix if "m" is NULL
        x$setmatinverse(m)
        m
}