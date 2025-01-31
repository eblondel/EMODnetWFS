% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/info.R
\name{emodnet_get_layer_info}
\alias{emodnet_get_layer_info}
\alias{emodnet_get_wfs_info}
\alias{emodnet_get_all_wfs_info}
\title{Get WFS available layer information}
\usage{
emodnet_get_layer_info(wfs, layers)

emodnet_get_wfs_info(wfs = NULL, service = NULL, service_version = "2.0.0")

emodnet_get_all_wfs_info()
}
\arguments{
\item{wfs}{A \code{WFSClient} R6 object with methods for interfacing an OGC Web Feature Service.}

\item{layers}{a character vector of layer names. To get info on layers, including
\code{layer_name} use \code{\link[=emodnet_get_wfs_info]{emodnet_get_wfs_info()}}.}

\item{service}{the EMODnet OGC WFS service name.
For available services, see \code{\link[=emodnet_wfs]{emodnet_wfs()}}.}

\item{service_version}{the WFS service version. Defaults to "2.0.0".}
}
\value{
a tibble containing metadata on each layer available from the service.
}
\description{
Get WFS available layer information
}
\details{
To minimize the number of requests sent to webservices,
these functions use \code{memoise} to cache results inside the active R session.
To clear the cache, re-start R or run \code{memoise::forget(emodnet_get_wfs_info)}/\code{memoise::forget(emodnet_get_layer_info)}.
}
\section{Functions}{
\itemize{
\item \code{emodnet_get_layer_info}: Get metadata for specific layers. Requires a
\code{wfs} object as input.

\item \code{emodnet_get_wfs_info}: Get info on all layers from am EMODnet WFS service.

\item \code{emodnet_get_all_wfs_info}: Get metadata on all layers and all available
services from server.
}}

\examples{
\dontrun{
emodnet_get_wfs_info(service = "bathymetry")
# Query a wfs object
wfs_cml <- emodnet_init_wfs_client("chemistry_marine_litter")
emodnet_get_wfs_info(wfs_cml)
# Get info for specific layers from wfs object
layers <- c(
  "bl_fishing_monitoring",
  "bl_beacheslocations_monitoring"
)
emodnet_get_layer_info(wfs = wfs_cml, layers = layers)
}
}
