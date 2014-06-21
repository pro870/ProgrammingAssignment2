
## function that solves and cache the inverse of a square matrix

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL                           # its NULL at first, the cacheSolve function checks this to see if it solve the matrix or retrive the cached one 
        set <- function(y) {     # this function set the value of x to an object with the special operator in a diferrent enviroment fromthe current
                x <<- y                
                s <<- NULL          
        }
        get <- function() x                            #returns x
        setmatinverse <- function(solve) s <<- solve   # does the inverse of the matrix
        getmatinverse <- function() s                  
        list(set = set, get = get,
             setmatinverse = setmatinverse,
             getmatinverse = getmatinverse)
}


## Return a matrix that is the inverse of 'x' or the cache matrix if it is already solved

cacheSolve <- function(x, ...) {
        
        s <- x$getmatinverse()           # as describe on top, this checks for the variable m if its NULL or not
        if(!is.null(s)) {
                message("getting cached matrix, kudos to me =)")   
                return(s)                         # if not, it return the cache matrix
        }
        data <- x$get()
        s <- solve(data, ...)             #this part solve the matrix if "m" is NULL
        x$setmatinverse(s)
        s
}