## ------------------------------------------
##                          Date: 2022-07-21
## ------------------------------------------
## Project: vscoder
## Author: Bruno Faria
## 
## GUI: vscode (1.69.2)
## Version R: 4.1.0
## Platform: windows (10.0.14393)
## ------------------------------------------

#' VS Code Version
#'
#' Get the vscode version.
#'
#' @usage vscode_version()
#' @return character class vector that indicates the vscode version.
#' @export 
#' @examples
#' vscode_version()

vscode_version <- function() {
    .check_vscode_version()
}

#' VS Code Extension
#'
#' Get the vscode extension.
#'
#' @usage vscode_extension()
#' @return object of the data frame class that gets the vscode extension.
#' @export 
#' @examples
#' vscode_extension()

vscode_extension <- function() {
    .check_vscode_extension()
}

#' VS Code Extension Path
#'
#' Get the path of the vscode extension.
#'
#' @usage path_extension(extension)
#' @param extension character class vector that indicates the extension id.
#' @return character class vector that indicates the vscode extension path.
#' @export 
#' @examples
#' path_extension("reditorsupport.r")

path_extension <- function(extension) {
    .check_path_extension(extension)
}
