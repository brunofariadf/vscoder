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
#' Check if the VS Code editor exists.
#'
#' @usage exists_vscode()
#' @return The logical class vector indicates if VS Code editor exists.
#' @export 
#' @examples
#' # default
#' # exists_vscode()

exists_vscode <- function() {
    .check_exists_vscode()
}

#' VS Code Version
#'
#' Get the VS Code editor version.
#'
#' @usage vscode_version()
#' @return character class vector that indicates the version of the VS Code editor.
#' @export 
#' @examples
#' # default
#' # vscode_version()

vscode_version <- function() {
    .check_vscode_version()
}

#' VS Code Extension
#'
#' Get the extension that was installed in the VS Code editor.
#'
#' @usage vscode_extension(type = "basic", format = TRUE)
#' @param type character class vector that indicates the type of search to get the extension with options 'basic' and 'info'.
#' @param format logical class vector that indicates whether the column should be formatted with 'TRUE' or 'FALSE' option.
#' @return The object of the dataframe class with information from the VS Code editor extension.
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
#' Get the VS Code editor extension path.
#'
#' @usage path_extension(extension)
#' @param extension character class vector that indicates the id of the extension.
#' @return dataframe class object with VS Code editor extension path information.
#' @export 
#' @examples
#' path_extension("reditorsupport.r")

path_extension <- function(extension) {
    .check_path_extension(extension)
}
