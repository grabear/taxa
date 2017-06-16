% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pick.R
\name{pick}
\alias{pick}
\title{Pick taxa}
\usage{
pick(.data, ...)
}
\arguments{
\item{.data}{Input, object of class \link{Hierarchy}, or \link{hierarchies}}

\item{...}{unquoted rank names (e.g., family), taxon names (e.g.,
Poa annua), or taxnomic IDs (e.g., 93036)}
}
\value{
an object of the same class as passed in
}
\description{
Pick out specific taxa, while others are dropped
}
\details{
supports \code{Hierarchy} and \code{hierarchies} objects
}
\examples{
# ranks
ex_hierarchy1
ex_hierarchy1 \%>\% pick(ranks(family))
ex_hierarchy1 \%>\% pick(ranks(family, genus))
# taxon names
ex_hierarchy1 \%>\% pick(nms(Poa))
ex_hierarchy1 \%>\% pick(nms(Poaceae, Poa))
# taxon ids
ex_hierarchy1 \%>\% pick(ids(4479))
ex_hierarchy1 \%>\% pick(ids(4479, 4544))
# mixed: ids and names
ex_hierarchy1 \%>\% pick(ranks(family), ids(4544))

## single taxonomic group
ex_hierarchy1 \%>\% pick(family)
### more than 1 - remake res object above first
ex_hierarchy1 \%>\% pick(family, genus)


# hierarchies
# single taxonomic group
invisible(lapply(ex_hierarchies, print))
ex_hierarchies \%>\% pick(family) \%>\% lapply(., print) \%>\% invisible

## more than one taxonomic group
invisible(lapply(ex_hierarchies, print))
ex_hierarchies \%>\% pick(family, genus) \%>\% lapply(., print) \%>\% invisible
}