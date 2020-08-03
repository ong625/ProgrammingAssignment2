## The code helps to invert matrices number input



makeCacheMatrix <- function(x = matrix()) {
  r <- NULL
  set <- function(y){
    x <<- y
    r<<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) r <<- inverse
  getInverse <- function() r 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Get the mean from the cache tp calculate the final mean 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  r<- x$getInverse()
  if(!is.null(r)){
    message("getting cached data")
    return(r)
  }
  mat <- x$get()
  r <- solve(mat,...)
  x$setInverse(r)
  j
  }
