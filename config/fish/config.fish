# Disable fish greeting
set fish_greeting ""

# Git prompt settings
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_describe_style 'branch'
set __fish_git_prompt_showcolorhints 'yes'
set __fish_git_prompt_show_informative_status 'yes'

# Git prompt colors
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_cleanstate green

function fish_prompt --description 'Write out the prompt'
  set -l last_status $status

  set_color $fish_color_cwd
  echo -n (prompt_pwd)
  set_color normal

  __fish_git_prompt

  if not test $last_status -eq 0
    set_color $fish_color_error
  end

  set_color $fish_color_cwd
  echo -n ' ➜  '
  set_color normal
end
