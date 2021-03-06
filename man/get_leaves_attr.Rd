% Generated by roxygen2 (4.0.2): do not edit by hand
\name{get_leaves_attr}
\alias{get_leaves_attr}
\title{Get/set attributes of dendrogram's leaves}
\source{
Heavily inspired by the code in the
function \code{labels.dendrogram},
so credit should go to Martin Maechler.
}
\usage{
get_leaves_attr(object, attribute, simplify = TRUE, ...)
}
\arguments{
\item{object}{a dendrogram object}

\item{attribute}{character scalar of the attribute (\code{attr})
we wish to get/set from the leaves}

\item{simplify}{logical. If TRUE (default), then the return vector is
after using \code{unlist} on it.}

\item{...}{not used}
}
\value{
A vector (or a list) with the dendrogram's leaves attribute
}
\description{
Get/set attributes of dendrogram's leaves
}
\examples{
# define dendrogram object to play with:
hc <- hclust(dist(USArrests[1:3,]), "ave")
dend <- as.dendrogram(hc)

# get_leaves_attr(dend) # error :)
get_leaves_attr(dend, "label")
labels(dend, "label")
get_leaves_attr(dend, "height") # should be 0's
get_nodes_attr(dend, "height")

get_leaves_attr(dend, "nodePar")


get_leaves_attr(dend, "leaf") # should be TRUE's
get_nodes_attr(dend, "leaf") # conatins NA's


get_leaves_attr(dend, "members") # should be 1's
get_nodes_attr(dend, "members") #


get_leaves_attr(dend, "members",simplify = FALSE) # should be 1's
}
\seealso{
\link{get_nodes_attr}, \link{nnodes},
\link{nleaves}, \link{assign_values_to_leaves_nodePar}
}

