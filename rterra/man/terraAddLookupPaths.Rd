% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/baseterra.R
\name{terraAddLookupPaths}
\alias{terraAddLookupPaths}
\title{Add search paths}
\usage{
terraAddLookupPaths(path, packagename, includecd = TRUE)
}
\arguments{
\item{includecd}{should we include the current directiory too?}

\item{a}{directory root}
}
\description{
Add search paths
}
\details{
Package authors can keep a 'terra' directory in the
'inst' folder of their package. Then call
terraAddLookupPaths(system.file("terra", package=PACKAGE_NAME))
}

