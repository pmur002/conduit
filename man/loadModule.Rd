% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.R
\name{loadModule}
\alias{loadModule}
\title{Load a module from an XML file}
\usage{
loadModule(name, ref, path = NULL, namespaces = c(oa =
  "http://www.openapi.org/2014/"))
}
\arguments{
\item{name}{Name of module}

\item{ref}{Module location or filename}

\item{path}{(Optional) Search path if \code{ref} is a filename}

\item{namespaces}{Namespaces used in XML document}
}
\value{
\code{module} list
}
\description{
Reads an XML file given by \code{ref} and \code{path} and interprets to
produce a \code{module}.
}
\details{
If the module XML file is not valid OpenAPI module XML this
function will return an error.

If \code{path} is not set and conduit needs to search for the file
the default search paths are used.
}
\examples{

## load a module from XML given by absolute of relative file path
mod1xml <- system.file("extdata", "simpleGraph", "createGraph.xml",
                       package = "conduit")
mod1 <- loadModule(name = "createGraph", ref = mod1xml)

## load a module by searching for 'ref'
srch1 <- system.file("extdata", package = "conduit")
srch1

mod2 <- loadModule(name = "layoutGraph", ref = "layoutGraph.xml",
                   path = srch1)
}
\seealso{
\code{module}
}

