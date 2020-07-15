## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function takes a matrix and store this matrix into cache, and we can also modify this matrix by calling set,get.
makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function(){x}
  
  setInverse<-function(inverse){
    inv<<-inverse
  }
  getInverse<-function(){
    inv
  }
  list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)
}


## Write a short comment describing this function
## This function takes a matrix(if this matrix is not exist in the cache) and inverse this matrix and return it.

cacheSolve <- function(x, ...) {
inv<-x$getInverse()
if(!is.null(inv)){
  message("getting cached data")
  return(inv)
}
mat<-x$get()
inv<-solve(mat,...)
x$setInverse(inv)
inv

}
