\name{terraAddRequirePaths}
\alias{terraAddRequirePaths}
\title{Adds include paths to the terra system}
\usage{
terraAddRequirePaths(modulenames)
}
\arguments{
  \item{paths}{a vector of paths to load}
}
\value{
throws an error upon failure
}
\description{
Adds include paths to the terra system
}
\details{
This is for terralib.require to discover paths. To see how
this works see http://lua-users.org/wiki/ModulesTutorial
Appends 'paths' to the package.path variable
}
\seealso{
\code{\link{terraAddIncludePaths}},\code{\link{terraLinkLibrary}},,\code{\link{terraAddGeneralPaths}}
}

