## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# The "makeCacheMatrix" function creates a list (special "matrix" object) which is used for
# a> setting and getting the value of the matrix
# b> setting and getting the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
                                            inverse_matrix <- NULL
    set <- function(y) {
       			 x <<- y; inverse_matrix <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse) inverse_matrix <<- inverse
    get_inverse <- function() inverse_matrix
    list(set=set, get=get, set_inverse =set_inverse , get_inverse =get_inverse )
}




## Write a short comment describing this function

#The "cacheSolve " function calculates the inverse of the matrix and sets the calculated #value in cache by set_inverse function. If the inverse matrix is already calculated, it #pulls the values from cache and skips the calculation part.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    inverse_matrix <- x$get_inverse ()
    if(!is.null(inverse_matrix)) {
       			 message("Pulling already existing cached data:")
      			 return(inverse_matrix)
    }
    data <- x$get();    inverse_matrix <- solve(data);    x$set_inverse (inverse_matrix)
    inverse_matrix
}
