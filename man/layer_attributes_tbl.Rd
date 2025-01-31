% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/layer_attributes.R
\name{layer_attributes_tbl}
\alias{layer_attributes_tbl}
\title{Get layer attribute values tibble}
\usage{
layer_attributes_tbl(
  wfs = NULL,
  service = NULL,
  service_version = "2.0.0",
  layer
)
}
\arguments{
\item{wfs}{A \code{WFSClient} R6 object with methods for interfacing an OGC Web Feature Service.}

\item{service}{the EMODnet OGC WFS service name.
For available services, see \code{\link[=emodnet_wfs]{emodnet_wfs()}}.}

\item{service_version}{the WFS service version. Defaults to "2.0.0".}

\item{layer}{character sting of layer name. To get info on layers, including
\code{layer_name} use \code{\link[=emodnet_get_wfs_info]{emodnet_get_wfs_info()}}.}
}
\value{
tibble of layer attribute (variable) values with geometry column removed.
}
\description{
Get layer attribute values tibble
}
\details{
Request excluding spatial information can be significantly faster. Can be
useful for inspecting attribute values and constructing feature filters for more
targeted and faster layer download.
}
\examples{
\dontrun{
layer_attributes_tbl(service = "human_activities", layer = "maritimebnds")
}
}
