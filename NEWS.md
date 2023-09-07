# vscoder 0.2.6.9000 (2023-09-07)

## Note from version

### &gt; vscoder (development)

-   development

### &gt; vscoder 0.2.6.9000 (2023-09-07)

- Fix for error message if VS Code editor is not installed.
- Correction for documentation of the functions.

### &gt; vscoder 0.2.4.9000 (2022-07-31)

-   Internal package improvements.
    -   `vscode_extension()` aplication correct from format argument to
        ‘basic’ type argument.
    -   Removed the old error system.

### &gt; vscoder 0.2.2.9000 (2022-07-28)

-   Added function `exists_vscode()` to search installed editor.
-   `vscode_extension()` received two arguments: type, a character class
    vector that indicates ‘basic’ or ‘extended’ information about
    installed extension; and ‘format’, a logical class vector that
    indicates whether the return of the function should have abbreviated
    lines.
-   Internal package improvements.
    -   The internal error system of the package has been redone for the
        purpose of maintaining long-term code.
    -   The package’s internal version control system has been automated
        for the purpose of maintaining long-term code.

### &gt; vscoder 0.0.0.9000 (2022-07-22)

-   Start of the package.
