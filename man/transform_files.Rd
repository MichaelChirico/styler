% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/transform-files.R
\name{transform_files}
\alias{transform_files}
\title{Transform files with transformer functions}
\usage{
transform_files(
  files,
  transformers,
  include_roxygen_examples,
  base_indention,
  dry
)
}
\arguments{
\item{files}{A character vector with paths to the file that should be
transformed.}

\item{transformers}{A list of transformer functions that operate on flat
parse tables.}

\item{include_roxygen_examples}{Whether or not to style code in roxygen
examples.}

\item{base_indention}{Integer scalar indicating by how many spaces the whole
output text should be indented. Note that this is not the same as splitting
by line and add a \code{base_indention} spaces before the code in the case
multi-line strings are present. See 'Examples'.}

\item{dry}{To indicate whether styler should run in \emph{dry} mode, i.e. refrain
from writing back to files .\code{"on"} and \code{"fail"} both don't write back, the
latter returns an error if the input code is not identical to the result
of styling. "off", the default, writes back if the input and output of
styling are not identical.}
}
\description{
\code{transform_files} applies transformations to file contents and writes back
the result.
}
\section{Value}{

Invisibly returns a data frame that indicates for each file considered for
styling whether or not it was actually changed (or would be changed when
\code{dry} is not "off").
}

\keyword{internal}
