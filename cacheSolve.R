cacheSolve <- function(x, ...){
    inverseMatx <- x$getMatrixInverse()
    if(!is.null(inverseMatx)) {
        message("getting cached data")
        return(inverseMatx)
    }
    data <- x$get()
    inverseMatx <- solve(data, ...)
    x$setMatrixInverse(inverseMatx)
    inverseMatx
    
}