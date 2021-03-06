% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.R
\name{resolveOutput}
\alias{resolveOutput}
\title{Checks a module output object has been created.}
\usage{
resolveOutput(moduleOutput, language, host, outputDirectory = getwd())
}
\arguments{
\item{moduleOutput}{\code{moduleOutput} object}

\item{language}{module language}

\item{host}{host list created by \code{parseModuleList}}

\item{outputDirectory}{location of module output files}
}
\value{
\code{output} object
}
\description{
Checks a module output object has been created.
}
\details{
Will produce an error if the object does not exist.

If \code{host} is not NULL the function attempts to copy the output
object across from the remote host and into the current working
directory.
}

