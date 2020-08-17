## Put comments here that give an overall description of what your
## functions do
## makeCacheMatrix function will define x and it's inverse and set them in variable
## cacheSolve function eill calculate the inverse or use the cache
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  solve<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setsolve<-function(solution) solve<<-solution
  getsolve<-function() solve
  list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
  }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  solve<-x$getsolve()
  if(is.null(solve)){
    data<-x$get()
    newsolve<-solve(data)
    x$setsolve(newsolve)
    
  }
  
  x$getsolve()
}
