library(RANN)
library(sf)
library(fnAdaptiveSampling)

#' Probably most important part
function(params) {
  # 1. Handle input
  # NOTE: from preprocess_params
  point_data <- params[["point_data"]]
  batch_size <- params[["batch_size"]]
  uncertainty_fieldname <- params[["uncertainty_fieldname"]]

  candidates_copy <- fn.fnAdaptiveSampling(point_data, batch_size, uncertainty_fieldname)
  return(geojson_list(candidates_copy))
}
