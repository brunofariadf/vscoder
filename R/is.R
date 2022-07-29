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

# check platform
# not export

.is_windows <- function() {
    p_i <- .Platform[["OS.type"]]
    if (p_i == "windows" & length(p_i) >= 1) TRUE else FALSE
}

.is_unix <- function() {
    x_i <- .Platform[["OS.type"]]
    if (x_i == "unix") TRUE else FALSE
}
