% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/client.R
\name{emodnet_init_wfs_client}
\alias{emodnet_init_wfs_client}
\title{Initialise an EMODnet WFS client}
\usage{
emodnet_init_wfs_client(service, service_version = "2.0.0", logger = NULL)
}
\arguments{
\item{service}{the EMODnet OGC WFS service name.
For available services, see \code{\link[=emodnet_wfs]{emodnet_wfs()}}.}

\item{service_version}{the WFS service version. Defaults to "2.0.0".}

\item{logger}{the logger. Either \code{NULL} (no logging info), \code{"INFO"} (log about ows4R requests)
or \code{"DEBUG"} (including curl details).}
}
\value{
An \code{\link[ows4R:WFSClient]{ows4R::WFSClient}} R6 object with methods for interfacing an OGC Web Feature Service.
}
\description{
Initialise an EMODnet WFS client
}
\examples{
\dontrun{
wfs <- emodnet_init_wfs_client(service = "bathymetry")
}
}
\seealso{
\code{WFSClient} in package \code{ows4R}.
}
