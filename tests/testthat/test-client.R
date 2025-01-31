test_that("Specified connection works", {
  wfs <- create_biology_wfs()
  expect_s3_class(wfs, c("WFSClient", "OWSClient", "OGCAbstractObject", "R6"))
  expect_identical(wfs$getUrl(), "https://geo.vliz.be/geoserver/Emodnetbio/wfs")
})

test_that("Error when wrong service", {
  expect_snapshot_error(emodnet_init_wfs_client("blop"))
})

test_that("Services down handled", {
  webmockr::httr_mock()

  test_url <- "https://demo.geo-solutions.it/geoserver/ows?request=GetCapabilities"

  webmockr::stub_request("get", uri = test_url) %>%
    webmockr::wi_th(headers = list("Accept" = "application/json, text/xml, application/xml, */*")) %>%
    webmockr::to_return(status = 500) %>%
    webmockr::to_return(status = 200)

  req_fail <- httr::GET(test_url)
  req_success <- httr::GET(test_url)

  # Test requests
  expect_true(httr::http_error(req_fail))
  expect_false(httr::http_error(req_success))

  # Test check_service behavior
  expect_snapshot_error(check_service(req_fail))
  expect_snapshot_error(check_service(req_success))

  webmockr::disable()
})

test_that("No internet challenge", {
  withr::local_envvar(list(NO_INTERNET_TEST_EMODNET = "bla"))

  test_url <- "https://demo.geo-solutions.it/geoserver/ows?"

  req_no_internet <- perform_http_request(test_url)

  expect_null(req_no_internet)
  expect_snapshot_error(check_service(req_no_internet))
})
