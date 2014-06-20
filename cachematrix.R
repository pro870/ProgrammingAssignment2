
## function that cache a matrix

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y             #uses the special operator
                s <<- NULL
        }
        get <- function() x
        setmatinverse <- function(solve) s <<- solve
        getmatinverse <- function() s
        list(set = set, get = get,
             setmatinverse = setmatinverse,
             getmatinverse = getmatinverse)
}



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
}