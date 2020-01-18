provide-module change-directory %{
  define-command change-directory-buffer -params 1 -buffer-completion -docstring 'Change the working directory to the given buffer directory' %{
    evaluate-commands -buffer %arg{1} %{
      change-directory %sh(dirname "$kak_buffile")
    }
  }
  define-command change-directory-current-buffer -docstring 'Change the working directory to the current buffer directory' %{
    change-directory-buffer %val{buffile}
  }
  define-command change-directory-git-root -docstring 'Change the working directory to the Git root directory' %{
    change-directory-current-buffer
    change-directory %sh(git rev-parse --show-toplevel)
  }
  alias global cd-buffer change-directory-buffer
  alias global cd-current-buffer change-directory-current-buffer
  alias global cd-git-root change-directory-git-root
  alias global cd! change-directory-git-root
}

require-module change-directory
