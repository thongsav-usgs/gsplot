.onAttach <- function(libname, pkgname) {
  packageStartupMessage("This information is preliminary or provisional and is subject to revision. It is being provided to meet the need for timely best science. The information has not received final approval by the U.S. Geological Survey (USGS) and is provided on the condition that neither the USGS nor the U.S. Government shall be held liable for any damages resulting from the authorized or unauthorized use of the information. Although this software program has been used by the USGS, no warranty, expressed or implied, is made by the USGS or the U.S. Government as to the accuracy and functioning of the program and related program material nor shall the fact of distribution constitute any such warranty, and no responsibility is assumed by the USGS in connection therewith.")
}


#' gsplot
#'
#' \tabular{ll}{
#' Package: \tab gsplot\cr
#' Type: \tab Package\cr
#' License: \tab Unlimited for this package, dependencies have more restrictive licensing.\cr
#' Copyright: \tab This software is in the public domain because it contains materials
#' that originally came from the United States Geological Survey, an agency of
#' the United States Department of Interior. For more information, see the
#' official USGS copyright policy at
#' http://www.usgs.gov/visual-id/credit_usgs.html#copyright\cr
#' LazyLoad: \tab yes\cr
#' }
#'
#' Collection of functions to do USGS graphics.
#'
#' @name gsplot-package
#' @docType package
NULL

#' Example Daily Data
#'
#' Example data representing data from the Maumee River at Waterville OH (discharge, temperature, pH)
#'
#' @name MaumeeDV
#' @docType data
#' @examples 
#' \dontrun{
#' 
#' library(dataRetrieval)
#' 
#' sites <-c("04193490","04193500")
#' 
#' begin <- "1981-10-01"
#' end <- "2011-09-30"
#' 
#' pCodes <- c("00060","00010","00400")
#' statCd <- c("00003", "00008")
#' 
#' MaumeeDV <- readNWISdv(sites, pCodes, begin, end, statCd)
#' MaumeeDV <- renameNWISColumns(MaumeeDV)
#' }
#' head(MaumeeDV)
NULL

