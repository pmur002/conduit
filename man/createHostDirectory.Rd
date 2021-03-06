% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.R
\name{createHostDirectory}
\alias{createHostDirectory}
\title{Creates module output directory on host}
\usage{
createHostDirectory(host)
}
\arguments{
\item{host}{remote host list}
}
\value{
0 if success
}
\description{
Creates module output directory on host
}
\details{
Directory to be created is given by \code{host$directory}
}
\seealso{
\code{runModule}
}

