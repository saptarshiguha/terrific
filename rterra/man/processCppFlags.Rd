\name{processCppFlags}
\alias{processCppFlags}
\title{Extract C include paths
helper function to add libraries to terra given a string output from pkg-config and it's likes}
\usage{
processCppFlags(cppflags)
}
\arguments{
  \item{cppflags}{the output of R CMD config --cppflags or
  pkg-config -cflags}
}
\value{
a character vector of include paths
}
\description{
Extract C include paths helper function to add libraries to
terra given a string output from pkg-config and it's likes
}

