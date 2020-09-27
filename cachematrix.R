## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## makecacheMatrix take matrix as argument and give list of function and its values
makeCacheMatrix <- function(x = matrix()) {
    inverse_matrix <- NULL  
    set <- function(y=matrix()){
      x <- y
      inverse_matrix <- NULL
    }
    get <- function() x
    set_inverse <- function(solve) inverse_matrix <<- solve
    get_inverse <- function() inverse_matrix
    list(set = set,get=get , set_inverse=set_inverse , get_inverse=get_inverse)
}


## Write a short comment describing this function
## cacheSolve take matrix and check if inverse_matrix is already solved.If not 
## calculate the inverse.
## Hear during making matrix cheack if matrix is invertible matrix (whose inverse is possible)
cacheSolve <- function(x, ...) {
  inverse_matrix <- x$get_inverse()
  if (!all(is.na(inverse_matrix))){
      message("getting cached data")
      inverse_matrix
    }
    data <- x$get()
    inverse_matrix <- solve(data)
    x$set_inverse(inverse_matrix)
    inverse_matrix
        ## Return a matrix that is the inverse of 'x'
}
