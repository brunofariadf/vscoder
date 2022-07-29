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

#' Check the VS Code Editor
#'
#' Check if exists the VS Code Editor.
#'
#' @usage exists_vscode()
#' @return logical class vector that indicates if exists editor VS Code.
#' @export 
#' @examples
#' # default
#' # exists_vscode()

exists_vscode <- function() {
    .check_exists_vscode()
}

#' VS Code Version
#'
#' Get the vscode version.
#'
#' @usage vscode_version()
#' @return character class vector that indicates the vscode version.
#' @export 
#' @examples
#' # default
#' # vscode_version()

vscode_version <- function() {
    .check_vscode_version()
}

#' VS Code Extension
#'
#' Get the vscode extension.
#'
#' @usage vscode_extension(type = "basic", format = TRUE)
#' @param type character class vector that indicates the extension search type with option 'basic' and 'info'.
#' @param format logical class vector that indicates if must be the column formated with option 'TRUE' or 'FALSE'.
#' @return object of the data frame class that gets the vscode extension.
#' @export 
#' @examples
#' # default
#' # vscode_extension()
#' # vscode_extension(type = "info")

vscode_extension <- function(type = "basic", format = TRUE) {
    .check_vscode_extension(type, format)
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
