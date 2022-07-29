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

# check vscode
# not export

.check_exists_vscode <- function() {
    if (!.is_windows()) {
        stop(.error("platform", NULL))
    }

    .get_exists_vscode()
}

# check version
# not export

.check_vscode_version <- function() {
    
    if (!.is_windows()) {
        stop(.error("platform", NULL))
    }

    .get_version()
}

# check extension
# not export

.check_vscode_extension <- function(type, format) {
    if (!.is_windows()) {
        stop(.error("platform", NULL))
    }

    if (!is.character(type)) {
        stop(.error("character", type))
    }

    if (!is.element(type, c("basic", "info"))) {
        stop(.error("type_extension", type))
    }

    if (!is.logical(format)) {
        stop(.error("logical", format))
    }

    if (!is.element(format, c("TRUE", "FALSE"))) {
        stop(.error("true_false", format))
    }

    .get_extension(type, format)
}

# check extension path
# not export

.check_path_extension <- function(extension) {
    if (!.is_windows()) {
        stop(.error("platform", NULL))
    }

    if (!is.character(extension)) {
        stop(.error("character", extension))
    }

    .get_path_extension(extension)
}
