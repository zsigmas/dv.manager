

# validation (S)
vdoc <- local({
  #                      ##########
  # package_name is used # INSIDE # the sourced file below
  #                      ##########  
  package_name <- read.dcf("../../DESCRIPTION")[, "Package"]

  source(
  system.file("validation", "utils-validation.R", package = package_name, mustWork = TRUE),
  local = TRUE
)[["value"]]

})
specs <- vdoc[["specs"]]
#  validation (F)
