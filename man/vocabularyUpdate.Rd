% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/vocabulary.R
\name{vocabularyUpdate}
\alias{vocabularyUpdate}
\title{Include new variables in the vocabulary}
\usage{
vocabularyUpdate(identifier, standard_name, units)
}
\arguments{
\item{identifier}{A vector containing the identifier(s) of the new variable(s) to be appended to the dictionary.}

\item{standard_name}{A vector containing the standard name(s) of the new variable(s) to be appended to the dictionary.}

\item{units}{A vector containing the units of the new variable(s) to be appended to the dictionary.}
}
\value{
The built-in vocabulary is updated with the new entries appended at the end.
}
\description{
Allows the introduction of new user defined entries in the default vocabulary
}
\examples{
\dontrun{
# Inclusion of a new variable ("Total snowfall amount")
vocabularyUpdate(identifier = "prsn",
                 standard_name = "total snowfall amount",
                 units = "mm")
showVocabulary()                 
# Inclusion of 2 new variables: 
vocabularyUpdate(identifier = c("wap",
                                "plev"),
                 standard_name = c("lagrangian tendency of air pressure",
                                   "air pressure"),
                 units = c("Pa.s-1",
                           "Pa"))
showVocabulary() 
}
}
\author{
J Bedia
}
\references{
Standard name table of the CF convention: http://cfconventions.org/standard-names.html
}
\seealso{
showVocabulary, to access the vocabulary contents
}

