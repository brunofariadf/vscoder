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

# check version
# not export

.check_vscode_version <- function() {
    if (!.is_windows()) {
        stop(.error("platform"))
    }

    .get_version()
}

# check extension
# not export

.check_vscode_extension <- function() {
    if (!.is_windows()) {
        stop(.error("platform"))
    }

    .get_extension()
}

# check extension path
# not export

.check_path_extension <- function(extension) {
    if (!.is_windows()) {
        stop(.error("platform"))
    }

    if (!is.character(extension)) {
        stop(paste0("'", extension, "'", " ", .error("character")))
    }

    .get_path_extension(extension)
}
