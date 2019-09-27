# change-directory

[![IRC][IRC Badge]][IRC]

###### [Usage](#usage) | [Documentation](#commands) | [Contributing](CONTRIBUTING)

> [Kakoune] extension to `change-directory` with additional switches.

## Installation

### [Pathogen]

``` kak
pathogen-infect /home/user/repositories/github.com/alexherbo2/change-directory.kak
```

## Configuration

## Usage

```
change-directory [-buffer] [-git] [directory]
```

**Example** – Add a command to switch to the project root of the current buffer:

``` kak
define-command change-directory-project-root %{
  change-directory-buffer
  try change-directory-git
}

alias global cd! change-directory-project-root
```

**Example** – Automatically switch to the project root of the current buffer:

``` kak
hook global WinDisplay .* change-directory-project-root
hook global FocusIn .* change-directory-project-root
```

## Commands

- `change-directory-buffer [buffer-name = current-buffer]`: Change the working directory to the given (or current) buffer directory
- `change-directory-git`: Change the working directory to the Git root

[Kakoune]: https://kakoune.org
[IRC]: https://webchat.freenode.net/#kakoune
[IRC Badge]: https://img.shields.io/badge/IRC-%23kakoune-blue.svg
[Pathogen]: https://github.com/alexherbo2/pathogen.kak
