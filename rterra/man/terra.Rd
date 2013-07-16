\name{terra}
\alias{terra}
\title{Runs a terra/lua function
Similar to R's .Call command, this calls a terra/lua function}
\usage{
  terra(f, ..., table = NULL)
}
\arguments{
  \item{f}{the function name}

  \item{...}{arguments to f. Currently at most 10}

  \item{table}{if your terra/lua function is not part of
  Terra's globals but a member of a table, pass the table
  name here}
}
\value{
  for this to return anything, the function called must
  return an R object (or a lua object wrapped in an R
  external pointer)
}
\description{
  Runs a terra/lua function Similar to R's .Call command,
  this calls a terra/lua function
}
\seealso{
  \code{\link{terra}},\code{\link{terraStr}}
}

