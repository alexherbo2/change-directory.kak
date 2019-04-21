define-command change-directory-buffer -params 0..1 -buffer-completion -docstring 'Change the working directory to the given (or current) buffer directory' %{
  evaluate-commands -draft %{
    buffer %sh(printf '%s' "${1:-$kak_bufname}")
    change-directory %sh{
      path=$kak_buffile
      search_directory() {
        path=$1
        while test ! -d "$path"; do
          path=$(dirname "$path")
        done
        printf '%s' "$path"
      }
      search_directory "$path"
    }
  }
}

define-command change-directory-git -docstring 'Change the working directory to the Git root' %{
  change-directory %sh{
    git_directory=$(git rev-parse --absolute-git-dir 2> /dev/null)
    if test $? -eq 0; then
      git_root=$(dirname "$git_directory")
      printf '%s' "$git_root"
    fi
  }
}
