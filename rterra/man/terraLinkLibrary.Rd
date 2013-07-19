\name{terraLinkLibrary}
\alias{terraLinkLibrary}
\title{Adds libraries to the terra system}
\usage{
  terraLinkLibrary(libs)
}
\arguments{
  \item{libs}{a vector of libraries to load}
}
\value{
  an error upon failure
}
\description{
  Adds libraries to the terra system
}
\details{
  You dont need to specify the full path name to the
  library assuming the path is ldconf/LD_LIBRARY_LOAD. If
  not specify the full path name
}
\seealso{
  \code{\link{terraAddIncludePaths}},\code{\link{terraAddRequirePaths}},\code{\link{processCppFlags}}
  and \code{\link{processLibFlags}}
}

