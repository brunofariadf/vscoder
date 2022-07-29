## ------------------------------------------
##                          Date: 2022-07-22
## ------------------------------------------
## Project: vscoder
## Author: Bruno Faria
## 
## GUI: vscode (1.69.2)
## Version R: 4.1.0
## Platform: windows (10.0.14393)
## ------------------------------------------

## format with many characters
## not export

.format_character_length <- function(x){
  # select and condition
  i_len <- function(x) {
    x <- unlist(strsplit(x, ""))[1:16]
    x <- paste(c(x, "~"), sep = "", collapse = "")
    return(x)
  }
  
  # limit
  i_pos <- function(x) {
    nchar(x) > 16
  }

  # check
  check_i <- function(x) {
      if (i_pos(x)) i_len(x) else x
  }

  execute_i <- function(x) {
    if (length(x) >= 1 && is.na(x)) {
      return(x)
    } else {
        x_i <- tryCatch(unlist(lapply(x, check_i)), error = function(i)NA)
        return(x_i)
    }
  }

  unlist(lapply(x, execute_i))
}

# check version
# not export

.count_version <- function(path, date, dev = TRUE) {
    .version <- function(x) {
        if (unique(x) == 0) {
            return(0)
        } else {
            return(max(x))
        }
    }

    if (file.exists(path)) {
        if (date == "start") {
            return("0.0.0.9000")
        } else {
            df_i <- utils::read.csv2(path, sep = ",")
            df_i <- if (date == "all") df_i else df_i[df_i[["date"]] <= as.Date(date),]
            major_i <- .version(df_i[["version"]])
            minor_i <- sum(grepl(df_i[["type"]], pattern = "minor"))
            patch_i <- sum(grepl(df_i[["type"]], pattern = "patch"))
            dev_i <- if (isTRUE(dev)) ".9000" else ""
            paste0(major_i, ".", minor_i, ".", patch_i, dev_i, " (", date, ")")
        }
    } else {
        stop("unknown file path.")
    }
}
