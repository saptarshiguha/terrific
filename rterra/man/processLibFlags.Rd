\name{processLibFlags}
\alias{processLibFlags}
\title{Extract libraries from link flags
 helper function to add libraries to terra given a string output from pkg-config and it's likes}
\usage{
  processLibFlags(l)
}
\arguments{
  \item{cppflags}{the output of R CMD config --lflags or
  pkg-config --libs.}
}
\value{
  a character vector of libraries to load
}
\description{
  Extract libraries from link flags helper function to add
  libraries to terra given a string output from pkg-config
  and it's likes
}
\details{
  Note, -L i.e. the path to the libraries is not processed.
  If the path is not present in LD_LIBRARY_PATH or ldconf
  then the library will not load. To resolve this, use
  terraLinkLibrary with the complete path or update
  LD_LIBRARY_PATH and/or ldconf
}

