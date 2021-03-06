% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{findFile}
\alias{findFile}
\title{Find a file referenced by \code{ref} and \code{path}}
\usage{
findFile(ref, path = NULL, location = getwd())
}
\arguments{
\item{ref}{file path or filename}

\item{path}{search path (optional)}

\item{location}{file directory of invoking pipeline/module xml (optional)}
}
\value{
absolute file path as character or NULL
}
\description{
Find a file referenced by \code{ref} and \code{path}
}

