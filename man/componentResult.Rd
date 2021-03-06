% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/result.R
\name{moduleResult}
\alias{componentResult}
\alias{moduleResult}
\alias{pipelineResult}
\title{Create \code{componentResult} objects}
\usage{
moduleResult(outputList, modulePath, module)

pipelineResult(componentResultList, pipelinePath, pipeline)
}
\arguments{
\item{outputList}{list of \code{output} objects}

\item{modulePath}{file path to module output}

\item{module}{\code{module} object which produced \code{outputList}}

\item{componentResultList}{list of \code{componentResult} objects}

\item{pipelinePath}{file path to pipeline output}

\item{pipeline}{\code{pipeline} object which produced
\code{componentResultList}}
}
\value{
object of class \code{componentResult} and either
    \code{moduleResult} or \code{componentResult} containing:

\item{file}{file path to resulting module or pipeline XML}
\item{component}{resulting \code{module} or \code{pipeline} object}
\item{outputList}{list of \code{output} objects produced by
    module(s)}
}
\description{
Constructor functions to create \code{componentResult}
    objects.
}
\details{
These functions are used to construct the objects returned
    by \code{runModule} and \code{runPipeline}.

The \code{moduleResult} constructor takes a list of module
\code{output} objects created by \code{resolveOutput}, the original
\code{module}, and the module's output location
\code{modulePath}. A \code{moduleResult} object is returned.

The \code{pipelineResult} constructor takes a list of
\code{componentResult} objects produced by \code{runComponent}, the
original \code{pipeline}, and the pipeline's output location
\code{pipelinePath}. A \code{pipelineResult} object is returned.

The \code{export} function can be used to export these objects to a
gzipped tarfile. The resulting tarfile can be read loaded into
conduit using the \code{importModule} and \code{importPipeline}
functions.
}
\section{Functions}{
\itemize{
\item \code{moduleResult}: returns the result of running a
\code{module}

\item \code{pipelineResult}: returns the result of running a
\code{pipeline}
}}

