# change-directory.kak

[`change-directory`] with additional features, to change to the buffer or [Git] root directory.

[Kakoune]: https://kakoune.org
[`change-directory`]: https://github.com/mawww/kakoune/blob/master/doc/pages/commands.asciidoc#files-and-buffers
[Git]: https://git-scm.com

## Installation

Add [`change-directory.kak`](rc/change-directory.kak) to your autoload or source it manually.

``` kak
require-module change-directory
```

## Usage

Change the working directory with `change-directory-buffer`, `change-directory-current-buffer` or `change-directory-git-root`.
They have aliases on `cd-buffer`, `cd-current-directory` and `cd-git-root` respectively.
Use `cd!` to change to the [Git] root directory.
