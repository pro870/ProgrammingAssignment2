
## function that cache a matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setmatinverse <- function(solve) m <<- solve
        getmatinverse <- function() m
        list(set = set, get = get,
             setmatinverse = setmatinverse,
             getmatinverse = getmatinverse)
}



## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        m <- x$getmatinverse()
        if(!is.null(m)) {
                message("getting cached matrix")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatinverse(m)
        m
}