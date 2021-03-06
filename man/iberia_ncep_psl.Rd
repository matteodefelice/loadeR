% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rdas.R
\name{iberia_ncep_psl}
\alias{iberia_ncep_psl}
\title{Field containing NCEP reanalysis data of sea-level pressure for the Iberian Peninsula.}
\format{A field}
\source{
\url{http://www.meteo.unican.es/ecoms-udg}
}
\description{
The data correspond to the wintertime (DJF) period 1991-2010, and it consists of daily mean data, computed as the
mean of the four 6-hourly model outputs.
}
\examples{
data(iberia_ncep_psl)
plotMeanField(iberia_ncep_psl)
}
\seealso{
\code{\link{makeMultiField}}, \code{\link[ecomsUDG.Raccess]{loadECOMS}}
}

