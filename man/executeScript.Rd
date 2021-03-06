% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/R.R, R/python.R, R/script.R, R/shell.R
\name{executeScript.R}
\alias{executeScript}
\alias{executeScript.R}
\alias{executeScript.python}
\alias{executeScript.shell}
\title{Execute a prepared module script file.}
\usage{
\method{executeScript}{R}(script, host)

\method{executeScript}{python}(script, host)

executeScript(script, host = NULL)

\method{executeScript}{shell}(script, host)
}
\arguments{
\item{script}{script file to be executed}

\item{host}{list of host details}
}
\value{
0 if successful
}
\description{
Execute a prepared module script file.
}
\details{
If \code{host} is provided script will be executed on
remote host in \code{host$directory}.
}
\section{Methods (by class)}{
\itemize{
\item \code{R}: Execute a script in the "R" language

\item \code{python}: Execute a script in the "python" language

\item \code{shell}: Execute a script in the "shell" language
}}
\seealso{
\code{runModule}
}

