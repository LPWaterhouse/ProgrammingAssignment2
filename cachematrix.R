## first function will create a "matrix" object and cahce its inverse

#define the function

makeCacheMatrix <- function(x = matrix()) {
  
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setmean <- function(mean) m <<- mean
    getmean <- function() m
    # list results
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)

}


## second function with either return previously cached result or calculate inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
    m <- x$getmean()
    if(!is.null(m)) {
      message("getting cached data")
      #get cached data
      return(m)
    }
    #calculate if not returned from previous step
    data <- x$get()
    m <- mean(data, ...)
    x$setmean(m)
    m
  
}
