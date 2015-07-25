## Put comments here that give an overall description of what your
## functions do

##this function creates a list of functions, if the matrix is to be initialized for the first time set() should be used.

makeCacheMatrix <- function(x = matrix()) 
{
  m <- NULL
  set <- function(y) 
  {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(x) m <<- x
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## cacheSolve returns the result when we pass a "special" matix x viz. list that is returned from the above function.

cacheSolve <- function(x, ...) {
       n<-x$getinverse()
  if(! is.null(n))
  {
    print("1")
    return(n)
  }
  else
  {
    data <- x$get()
    m <- solve(data)
    x$setinverse(m)
    m
  }
}
