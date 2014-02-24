\name{tinit}
\alias{tinit}
\title{initializes the terra subsystem}
\usage{
tinit(clang = "clang", includes, libraries = NULL, clangIncludes = NULL,
  rcppflags = NULL, options = list(verbose = 0L, debug = 1L))
}
\arguments{
  \item{clang}{path to clang/clang++ binary}

  \item{includes}{is a vector of include directories}

  \item{libraries}{path to libraries to load}

  \item{clangIncludes}{provide your own path to the clang
  includes, if missing rterra will try and find it}

  \item{rcppflags}{provide your own value for R CMD config
  --cppflags (if you do, a character vector)}

  \item{options}{if verbose >0 then lots of output and if
  debug>0 then line numebrs in stack traces}
}
\value{
TRUE upon success, error if it fails
}
\description{
initializes the terra subsystem
}

