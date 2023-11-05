## the first function creates a cache MatrixObject, which can chache the inverse of a matrix
## the second function computes the inverse of a matrix or returns the already previously computed and cached inverse

## creation of a make CacheMatrix, which sets and stores the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## computing and caching the inverse of a function or returning the previously stored inverse

cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- Solve(data, ...)
  x$setinverse(i)
  i
}
