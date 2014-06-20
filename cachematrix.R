
## function that solves and cache the inverse of a square matrix

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
        m <- NULL                           # its NULL at first, the cacheSolve function checks this to see if it solve the matrix or retrive the cached one 
        set <- function(y) {     # this function set the value of x to an object with the special operator in a diferrent enviroment fromthe current
                x <<- y                
                m <<- NULL          
        }
        get <- function() x                            #returns x
        setmatinverse <- function(solve) m <<- solve   # does the inverse of the matrix
        getmatinverse <- function() m                  
=======
        s <- NULL
        set <- function(y) {
                x <<- y             #uses the special operator
                s <<- NULL
        }
        get <- function() x
        setmatinverse <- function(solve) s <<- solve
        getmatinverse <- function() s
>>>>>>> c1c42dbe779d8f694d0e2ff1ff8ed95ccdaa5c49
        list(set = set, get = get,
             setmatinverse = setmatinverse,
             getmatinverse = getmatinverse)
}



<<<<<<< HEAD
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
=======
## Return a matrix that is the inverse of the matrix

cacheSolve <- function(x, ...) {
        s <- x$getmatinverse()
        if(!is.null(s)) {    #if the object is solved it return the cache matrix
                message("getting cached matrix")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setmatinverse(s)
        s
>>>>>>> c1c42dbe779d8f694d0e2ff1ff8ed95ccdaa5c49
}