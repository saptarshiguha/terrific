\name{tinit}
\alias{tinit}
\title{initializes the terra subsystem}
\usage{
tinit(clang = "clang", includes, libraries, options = list(verbose = 0L,
  debug = 1L))
}
\arguments{
  \item{clang}{path to clang/clang++ binary}

  \item{includes}{is a vector of include directories}

  \item{libraries}{path to libraries to load}
}
\value{
TRUE upon success, error if it fails
}
\description{
initializes the terra subsystem
}

