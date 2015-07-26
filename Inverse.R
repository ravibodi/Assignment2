
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y) {
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinverse <- function(n) n <<- n
  getinverse <- function() n
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

cacheSolve <- function(x, ...) {
  n <- x$getinverse()
  if(!is.null(n)) {
    message("getting cached data.")
    return(n)
  }
  data <- x$get()
  n <- solve(data)
  x$setinverse(n)
n
}
