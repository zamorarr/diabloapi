data_resources_api <- function(subpath) {
  path <- c("d3", "data", subpath)
  diablo_api(path)
}

#' @title  Data Resources API
#'
#' @param data The item data string (from a profile) containing the item to lookup
#' @param follower The data about a follower
#' @param artistan The data about an artisan
#'
#' @details The Data Resources API is the primary way to access character information.
#' \describe{
#'  \item{item}{Returns data for a profile item}
#'  \item{follower}{Returns data for a follower}
#'  \item{artisan}{Returns data for an artisan}
#' }
#'
#' @export
#' @source https://dev.battle.net/io-docs
item <- function(data) data_resources_api(c("item", data))

#' @export
#' @rdname item
follower <- function(follower = c("enchantress", "scoundrel", "templar")) {
  follower <- match.arg(follower)
  data_resources_api(c("follower", follower))
}

#' @export
#' @rdname item
artisan <- function(artisan = c("blacksmith", "jeweler", "mystic")) {
  artisan <- match.arg(artisan)
  data_resources_api(c("artisan", artisan))
}
