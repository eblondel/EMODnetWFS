.emodnet_get_layer_info <- function(wfs, layers) {
  check_wfs(wfs)

  layers <- namespace_layer_names(wfs, layers)

  capabilities <- wfs$getCapabilities()

  wfs_layers <- purrr::map(layers, capabilities$findFeatureTypeByName) %>%
    unlist(recursive = FALSE)

  tibble::tibble(
    data_source = "emodnet_wfs",
    service_name = wfs$getUrl(),
    service_url = get_service_name(wfs$getUrl()),
    layer_name = purrr::map_chr(wfs_layers, ~ .x$getName()),
    title = purrr::map_chr(wfs_layers, ~ .x$getTitle()),
    abstract = purrr::map_chr(wfs_layers, ~ get_abstract_null(.x)),
    class = purrr::map_chr(wfs_layers, ~ .x$getClassName()),
    format = purrr::map_chr(wfs_layers, guess_layer_format)
  ) %>%
    tidyr::separate(
      .data$layer_name,
      into = c("layer_namespace", "layer_name"),
      sep = ":"
    ) %>%
    unique()
}

#' @describeIn emodnet_get_wfs_info Get metadata for specific layers. Requires a
#' `wfs` object as input.
#' @inheritParams emodnet_get_layers
#' @importFrom memoise memoise
#' @details To minimize the number of requests sent to webservices,
#' these functions use `memoise` to cache results inside the active R session.
#' To clear the cache, re-start R or run `memoise::forget(emodnet_get_wfs_info)`/`memoise::forget(emodnet_get_layer_info)`.
#' @export
emodnet_get_layer_info <- memoise::memoise(.emodnet_get_layer_info)

.emodnet_get_wfs_info <- function(wfs = NULL, service = NULL, service_version = "2.0.0") {
	if (is.null(wfs) && is.null(service)) {
		cli::cli_abort(
			c(
				"Please provide a valid {.field service} name or {.field wfs} object.",
				x = "Both cannot be {.val NULL} at the same time."
			)
		)
  }

  wfs <- wfs %||% emodnet_init_wfs_client(service, service_version)
  check_wfs(wfs)

  capabilities <- wfs$getCapabilities()

  tibble::tibble(
    data_source = "emodnet_wfs",
    service_name = get_service_name(capabilities$getUrl()),
    service_url = capabilities$getUrl(),
    layer_name = purrr::map_chr(capabilities$getFeatureTypes(), ~ .x$getName()),
    title = purrr::map_chr(capabilities$getFeatureTypes(), ~ .x$getTitle()),
    abstract = purrr::map_chr(capabilities$getFeatureTypes(), ~ get_abstract_null(.x)),
    class = purrr::map_chr(capabilities$getFeatureTypes(), ~ .x$getClassName()),
    format = purrr::map_chr(capabilities$getFeatureTypes(), guess_layer_format)
  ) %>%
    tidyr::separate(.data$layer_name,
      into = c("layer_namespace", "layer_name"),
      sep = ":"
    )
}
#' Get WFS available layer information
#'
#' @param wfs A `WFSClient` R6 object with methods for interfacing an OGC Web Feature Service.
#' @inheritParams emodnet_init_wfs_client
#' @return a tibble containing metadata on each layer available from the service.
#' @export
#' @describeIn emodnet_get_wfs_info Get info on all layers from am EMODnet WFS service.
#' @examples
#' \dontrun{
#' emodnet_get_wfs_info(service = "bathymetry")
#' # Query a wfs object
#' wfs_cml <- emodnet_init_wfs_client("chemistry_marine_litter")
#' emodnet_get_wfs_info(wfs_cml)
#' # Get info for specific layers from wfs object
#' layers <- c(
#'   "bl_fishing_monitoring",
#'   "bl_beacheslocations_monitoring"
#' )
#' emodnet_get_layer_info(wfs = wfs_cml, layers = layers)
#' }
emodnet_get_wfs_info <- memoise::memoise(.emodnet_get_wfs_info)

#' @describeIn emodnet_get_wfs_info Get metadata on all layers and all available
#' services from server.
#' @export
emodnet_get_all_wfs_info <- function() {
  purrr::map_df(
    emodnet_wfs()$service_name,
    ~ suppressMessages(emodnet_get_wfs_info(service = .x))
  )
}

get_abstract_null <- function(x) {
  abstract <- x$getAbstract()
  abstract %||% ""
}

guess_layer_format <- function(layer) {
  if (any(layer$getDescription(pretty = TRUE)$geometry)) {
    "sf"
  } else {
    "data.frame"
  }
}
