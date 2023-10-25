myf <- function(x) {
  y = 9
  innerf <- function(x) assign('Global.res', x^2, envir = .GlobalEnv)
  innerf(x+1)
}

myf(3)