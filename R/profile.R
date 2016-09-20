profile_api <- function(subpath) {
  path <- c("d3", "profile", subpath)
  diablo_api(path)
}

#' @title  Profile API
#'
#'
#' @description The Character Profile API is the primary way to access character information.
#' @param battletag Battle Tag in name-#### format (ie. Noob-1234)
#' @param id The hero id of the hero to look up
#'
#' @details
#' \describe{
#'  \item{career_profile}{Returns the career profile of a Battle Tag}
#'  \item{hero_profile}{Returns the hero profile of a Battle Tag's hero}
#' }
#'
#' @export
#' @source https://dev.battle.net/io-docs
career_profile <- function(battletag) profile_api(paste0(battletag,"/"))

#' @export
#' @rdname career_profile
hero_profile <- function(battletag, id) profile_api(c(battletag,"hero",id))
