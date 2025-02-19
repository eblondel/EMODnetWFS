test_that("wfs all info works", {
  forget_all()
  skip_if_offline()
  all_info <- emodnet_get_all_wfs_info()
  expect_s3_class(all_info, class = c("tbl_df", "tbl", "data.frame"))
  expect_gt(nrow(all_info), 0L)
  expect_setequal(unique(all_info$service_name), emodnet_wfs()$service_name)
})

test_that("wfs info works on wfs object", {
  forget_all()
  wfs <- create_biology_wfs()
  with_mock_dir("biology-info", {
    layer_info_all <- emodnet_get_wfs_info(wfs)
  })

  expect_s3_class(layer_info_all, class = c("tbl_df", "tbl", "data.frame"))
  expect_gt(nrow(layer_info_all), 0L)
  expect_identical(unique(layer_info_all$service_name), "biology")
  expect_identical(unique(layer_info_all$service_url), "https://geo.vliz.be/geoserver/Emodnetbio/wfs")
})

test_that("emodnet_get_layer_info works", {
  wfs <- create_biology_wfs()
  with_mock_dir("biology-info", {
    layers <- c("mediseh_zostera_m_pnt", "mediseh_cymodocea_pnt")
    layer_info_cml <- emodnet_get_layer_info(
      wfs = wfs,
      layers = layers
    )
  })
  expect_identical(nrow(layer_info_cml), 2L)
  expect_setequal(layer_info_cml$layer_name, layers)
  expect_s3_class(layer_info_cml,
    class = c("tbl_df", "tbl", "data.frame")
  )
})
