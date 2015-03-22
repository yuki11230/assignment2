
#Write a short comment describing this function
# makeCacheMatrix is a function that returns a list of functions
#the puspose is to store a martix and a cached value of the inverse of the matrix.
#Explain the list of functioins
# * set      set the value of a matrix
# * get      get the value of a matrix
# * setCacheInverse   get the inverse of the matrix
# * getCacheInverse   get the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setCacheInverse <- function(solve) m <<- solve
  getCacheInverse <- function() m
  list(set = set, get = get,
       setCacheInverse =  setCacheInverse,
       getCacheInverse = getCacheInverse)
}


## # The following function calculates the inverse of a "special" matrix created with makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getCacheInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setCacheInverse(m)
  m
}
