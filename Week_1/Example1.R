myf <- function(x) {
  innerf <- function(x) assign('Global.res', x^2, envir = .GlobalEnv)
  innerf(x+1)
}

myf(3)