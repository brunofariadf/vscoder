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

## --------------------------------------------------------------------------------
## check - date: 2022-07-21 23:04:58
## --------------------------------------------------------------------------------

.error <- function(type) {
    .error_platform <- function() {
        p_i <- .Platform[["OS.type"]]
        paste0("Method not applied to the ", p_i, " platform.")
    }

    .error_character <- function() {
        paste0("must be character class vector.")
    }

    if (type == "platform") {
        .error_platform()
    } else if (type == "character") {
        .error_character()
    }
}

## --------------------------------------------------------------------------------
## engineer - date: 2022-07-21 22:41:08
## --------------------------------------------------------------------------------

# get vscode
# not export

.get_exists_vscode <- function() {
    if (.is_windows()) {
        x_i <- shell("where code", intern = TRUE)
        x_i <- file.exists(x_i)
        is.element(TRUE, x_i)
    }
}

# get version
# not export

.get_version <- function() {
    if (.is_windows()) {
        shell("code --version", intern = TRUE)[1]
    }
}

# .get_version()

# get extension
# not export

.get_extension <- function(type, format) {
    if (.is_windows()) {
        if (type == "basic") {
            data.frame(
                id = .get_id(),
                version = .get_id_version()
            )
        } else if (type == "info") {
            path_i <- .get_path_extension_package(.get_id())
            name_i <- basename(dirname(path_i))
            df_i <- lapply(path_i, 
                function(x)tryCatch(.df_list(jsonlite::fromJSON(x)),
                    error = function(i).df_list_error(x)))
            df_i <- if (isTRUE(format)) lapply(df_i, .format_character_length) else df_i
            df_i <- do.call(rbind, df_i)
            data.frame(
                id = if (isTRUE(format)) .format_character_length(name_i) else name_i, 
                df_i)
        }
    }
}

# .get_extension("basic", TRUE)
# .get_extension("info", TRUE)

# nrow(.get_extension("basic"))
# length(.get_id())
# length(.get_path_extension_package())

# get extension path
# not export

.get_path_extension <- function(extension) {
    path_i <- .list_extension_path()
    Filter(function(x)grepl(x, pattern = extension), path_i)
}

# .get_path_extension("hediet.vscode-drawio")

.get_path_extension_package <- function(extension) {
    pkg_i <- paste0("package", ".", "json")
    # filter_i <- gsub("\\, ", "|", toString(extension))
    path_i <- unlist(lapply(extension, path_extension))
    suppressWarnings(normalizePath(file.path(path_i, pkg_i)))
    # Filter(function(x)grepl(x, pattern = filter_i), path_i)
}

# .get_id()
# .get_path_extension_package(.get_id())

## ------------------------------------------
## engineer utils
## ------------------------------------------

# get id
# not export

.get_id <- function() {
    if (.is_windows()) {
        id_i <- shell("code --list-extensions", intern = TRUE)
        tolower(id_i)
    }
}

# get id version
# not export

.get_id_version <- function() {
    if (.is_windows()) {
        ext_ver <- shell("code --list-extensions --show-versions", intern = TRUE)
        ext_ver <- strsplit(ext_ver, split = "@")
        as.vector(unlist(lapply(ext_ver, function(x)x[2])))
    }
}

# .get_id_version()

# list extension path
# not export

.list_extension_path <- function() {
    if (.is_windows()) {
        m_i <- Sys.getenv("USERPROFILE")
        m_i <- file.path(m_i, ".vscode", "extensions")
        list_i <- list.dirs(m_i, recursive = FALSE)
        list_i <- as.vector(unlist(
            lapply(list_i, 
                function(x)suppressWarnings(
                    normalizePath(list_i)))
        ))
        unique(list_i)
    }
}

# .list_extension_path()

# select df to extension
# not export

.df_list <- function(data) {
    data.frame(
        version = data[["version"]],
        license = data[["license"]],
        publisher = data[["__metadata"]][["publisherDisplayName"]],
        description = data[["description"]]
    )
}

.df_list_error <- function(data) {
    data.frame(
        version = NA,
        license = NA,
        publisher = NA,
        description = NA
    )
}