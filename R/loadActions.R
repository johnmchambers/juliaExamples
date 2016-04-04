.loadSVD <- function(ns) {
    ev <- XRJulia::RJulia()
    XRJulia::juliaAddToPath()
    XRJulia::juliaUsing("juliaExamples")
    genr <- setJuliaClass("SVD", where = ns)
    assign("SVD", genr, envir = ns)
    genr <- setRefClass("SvdJTimed", contains = "SVD",
             fields =c(time = "numeric"), where = ns)
    assign("SvdJTimed", genr, envir = ns)
    assign("svdJ", JuliaFunction("svdfact"))
}

setLoadActions(.loadSVD)
