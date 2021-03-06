% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hierarchies.R
\name{hierarchies}
\alias{hierarchies}
\title{Make a set of many \code{\link[=hierarchy]{hierarchy()}} class objects}
\usage{
hierarchies(..., .list = NULL)
}
\arguments{
\item{...}{Any number of object of class \code{\link[=hierarchy]{hierarchy()}}}

\item{.list}{Any number of object of class \code{\link[=hierarchy]{hierarchy()}} in a list}
}
\value{
An \code{R6Class} object of class \code{\link[=hierarchy]{hierarchy()}}
}
\description{
Make a set of many \code{\link[=hierarchy]{hierarchy()}} class objects.
This is just a thin wrapper over a standard list.
}
\examples{
x <- taxon(
  name = taxon_name("Poaceae"),
  rank = taxon_rank("family"),
  id = taxon_id(4479)
)
y <- taxon(
  name = taxon_name("Poa"),
  rank = taxon_rank("genus"),
  id = taxon_id(4544)
)
z <- taxon(
  name = taxon_name("Poa annua"),
  rank = taxon_rank("species"),
  id = taxon_id(93036)
)
hier1 <- hierarchy(z, y, x)

a <- taxon(
  name = taxon_name("Felidae"),
  rank = taxon_rank("family"),
  id = taxon_id(9681)
)
b <- taxon(
  name = taxon_name("Puma"),
  rank = taxon_rank("genus"),
  id = taxon_id(146712)
)
c <- taxon(
  name = taxon_name("Puma concolor"),
  rank = taxon_rank("species"),
  id = taxon_id(9696)
)
hier2 <- hierarchy(c, b, a)

d <- taxon(
  name = taxon_name("Chordata"),
  rank = taxon_rank("phylum"),
  id = taxon_id(158852)
)
e <- taxon(
  name = taxon_name("Vertebrata"),
  rank = taxon_rank("subphylum"),
  id = taxon_id(331030)
)
f <- taxon(
  name = taxon_name("Teleostei"),
  rank = taxon_rank("class"),
  id = taxon_id(161105)
)
g <- taxon(
  name = taxon_name("Salmonidae"),
  rank = taxon_rank("family"),
  id = taxon_id(161931)
)
h <- taxon(
  name = taxon_name("Salmo"),
  rank = taxon_rank("genus"),
  id = taxon_id(161994)
)
i <- taxon(
  name = taxon_name("Salmo salar"),
  rank = taxon_rank("species"),
  id = taxon_id(161996)
)
hier3 <- hierarchy(d, e, f, g, h, i)

hiers <- hierarchies(hier1, hier2, hier3)

# pass into the .list parameter
hierarchies(.list = list(hier1, hier2, hier3))
}
\seealso{
Other classes: \code{\link{hierarchy}}, \code{\link{taxa}},
  \code{\link{taxmap}}, \code{\link{taxon_database}},
  \code{\link{taxon_id}}, \code{\link{taxon_name}},
  \code{\link{taxon_rank}}, \code{\link{taxonomy}},
  \code{\link{taxon}}
}
\concept{classes}
