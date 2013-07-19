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
  This is for terralib.require to discover paths this is
  how it works, Load the terra code modulename. require
  first checks if modulename has already been loaded by a
  previous call to require, returning the previously loaded
  results if available. Otherwise it searches terralib.path
  for the module. terralib.path is a semi-colon separated
  list of templates, e.g.: "lib/?.t;./?.t" The modulename
  is first converted into a path by replacing any . with a
  directory separator, /. Then each template is tried until
  a file is found. For instance, using the example path,
  the call terralib.require("foo.bar") will try to load
  lib/foo/bar.t or foo/bar.t. If a file is found, then
  require will return the result of calling
  terralib.loadfile on the file. By default, terralib.path
  is set to the environment variable TERRA_PATH or the
  value "?.t" if TERRA_PATH is not set. This functions
  "?.t" to every path in modulenames
}
\seealso{
  \code{\link{terraAddIncludePaths}},\code{\link{terraLinkLibrary}}
}

