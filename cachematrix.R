
#Write a short comment describing this function
# makeCacheMatrix is a function that returns a list of functions
# Its puspose is to store a martix and a cached value of the inverse of the 
# matrix. Contains the following functions:
# * setMatrix      set the value of a matrix
# * getMatrix      get the value of a matrix
# * cacheInverse   get the cahced value (inverse of the matrix)
# * getInverse     get the cahced value (inverse of the matrix)
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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
