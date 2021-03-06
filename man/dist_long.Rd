% Generated by roxygen2 (4.0.2): do not edit by hand
\name{dist_long}
\alias{dist_long}
\title{Turns a dist object to a "long" table}
\usage{
dist_long(d, ...)
}
\arguments{
\item{d}{a distance object}

\item{...}{not used}
}
\value{
A data.frame with two columns of rows and column names of the dist object
and a third column (distance) with the distance between the two.
}
\description{
Turns a dist object to a "long" table
}
\examples{
# library(magrittr)
data(iris)
iris[2:6,-5] \%>\% dist \%>\% data.matrix
iris[2:6,-5] \%>\% dist \%>\% as.vector
iris[2:6,-5] \%>\% dist \%>\% dist_long
# This can later be used to making a network plot based on the distances.
}

