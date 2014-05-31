makeCacheMatrix <- function(matx){
    
    inverseMatrix <- NULL
    set <- function(y) {
        matx <<- y
        inverseMatrix <<- NULL
    }
    get <- function() matx
    setMatrixInverse <- function(inverse) inverseMatrix <<- inverse
    getMatrixInverse <- function() inverseMatrix
    list(set = set, get = get, setMatrixInverse = setMatrixInverse, getMatrixInverse = getMatrixInverse)
    
}