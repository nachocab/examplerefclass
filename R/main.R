Parent <- setRefClass("Parent",
    methods = list(
        initialize = function() { }
    )
)

.onLoad <- function(libname, pkgname){
    temp <- new.env()
    file <- system.file("example.R", package = "examplerefclass")
    sys.source(file, envir = temp)
    print(ls(temp))
}
