## ------------------------------------------
##                          Date: 2022-07-28
## ------------------------------------------
## Project: vscoder
## Author: Bruno Faria
## 
## GUI: VSCode (1.69.2)
## Language: R (4.1.0)
## Platform: Windows
## ------------------------------------------

# check error
# not export

.error_platform <- function(insert) {
    p_i <- .Platform[["OS.type"]]
    paste0("Method not applied to the ", p_i, " platform.")
}

.error_character <- function(insert) {
    paste0("'", insert, "' must be character class vector.")
}

.error_logical <- function(insert) {
    paste0("'", insert, "' must be logical class vector.")
}

.error_numeric <- function(insert) {
    paste0("'", insert, "' must be numeric class vector.")
}

.error_type_extension <- function(insert) {
    paste0("'", insert, "' must be numeric class vector with option 'basic' and 'info'.")
}

.error_true_false <- function(insert) {
    paste0("'", insert, "' must be numeric class vector with option 'TRUE' and 'FALSE'.")
}

.error <- function(type, insert) {
    switch(type,
        "platform" = .error_platform(insert),
        "character" = .error_character(insert),
        "logical" = .error_logical(insert),
        "type_extension" = .error_type_extension(insert),
        "true_false" = .error_true_false(insert),
        "Unknown error type."
    )
}
