### Platform support for python3 platform

#' Platform support for "python3" platform.
#'
#' @details Creates a .py script file from the supplied \code{module},
#' taking specific input file paths from \code{inputs}.
#'
#' Writes script to \code{modulePath}, then attempts to execute the
#' script in this location.
#'
#' @param module \code{module} object
#' @param inputs Named list of input locations
#' @param modulePath File path for module output
#' @return FIXME: nothing meaningful
runPlatform.python3 <- function(module, inputs, modulePath) {
    ## sourceScript contains the module's source(s) to be evaluated
    sourceScript <-
        lapply(module$sources,
               function (s) {
                   s["value"]
               })
    sourceScript <- unlist(sourceScript)
    ## directoryScript ensures the platform call is run in the module's
    ## assigned directory
    directoryScript <-
        paste0("os.chdir('", modulePath, "')")
    ## inputScript loads the module's designated inputs
    inputScript <- outputScript <- character(1)
    inputScript <-
        if (length(module$inputs)) {
            sapply(
                module$inputs,
                function (x) {
                    inputName <- x["name"]
                    type <- x["type"]
                    fromFile <- paste0(inputs[[inputName]], ".pickle")
                    input <-
                        if (type == "internal") {
                            c(paste0("with open('", fromFile,
                                     "', 'rb') as f:"),
                              paste0("\t", inputName, " = pickle.load(f)"))
                        } else if (type == "external") {
                            paste0(inputName, " = '", fromFile, "'")
                        }
                })
        }
    ## outputScript loads the module's designated outputs
    outputScript <-
        if (length(module$outputs)) {
            sapply(
                module$outputs,
                function (x) {
                    type <- x["type"]
                    if (type == "internal") {
                        name <- x["name"]
                        c(paste0("with open('", name, ".pickle', 'wb') as f:"),
                          paste0("\tpickle.dump(", name, ", f)"))
                    } else {
                        character(1)
                    }
                })
        }
    ## moduleScript combines the scripts in correct order
    moduleScript <- c("import os", "import pickle", directoryScript,
                      inputScript, sourceScript, outputScript)
    
    ## write script file to directory
    scriptPath <- file.path(modulePath, "script.py")
    scriptFile <- file(scriptPath)
    writeLines(moduleScript, scriptFile)
    close(scriptFile)

    ## run the script in a PLATFORM session
    systemCall <- systemCall <- paste0("python3 ", scriptPath)
    try(system(systemCall))
}
