# Save this as ./config/fish/functions/gh.fish

# Prints the remote url
# Example: git@github.com:oguzbilgic/dotfiles.git
function origin
  echo (git remote get-url origin)
end

# Prints the origin and remote
# Example: oguzbilgic/dotfiles
function org_repo
  set --local origin_with_dot_git (string split ":" (git_origin))
  set --local org_repo (string split "." $origin_with_dot_git[2])
  echo  $org_repo[1]
end

# Prints the current branch name
# Example: master
function branch
  echo (git rev-parse --abbrev-ref HEAD)
end

# Prints the current branch name
# Example: 2cc1aad3e961ca57f6d96498d5fe70a31d9f17f0
function commit
  echo (git rev-parse HEAD)
end

# Easily open Github from your command line
#
# Commands:
#   gh           opens the current branch 
#   gh [file]    opens the file for the current branch (ie. gh README.md)
#   gh issues    opens the issues page
#   gh pulls     opens the pull requests page 
#   gh actions   opens the actions page
#   gh compare   opens the compare for the current branch
#   gh commit    opens the last commit of the current branch 
#   gh commits   opens the commits page for the current branch 
function gh 
  #Options for the argparse
  set --local options 'h/help' 'f/file=' 'i/issue=!_validate_int --min 1' 'b/issues' 'u/pulls' 'p/pull=!_validate_int --min 1' 'a/actions' 'o/compare' 'c/commit' 's/commits' 'd'

  # Read the arguments of the function and validates according to $options
  argparse $options -- $argv

  if set --query _flag_h
    echo "Usage: gh [-h/help ] [-f/file [file] ] [-i/issue [issue number] ] [-b/issues] [-u/pulls] [-p/pull [pull number] ] [-a/actions] [-o/compare] [-c/commit] [-s/commits] [-d]"
    echo "Options:"
    echo_tabulated ". -f/file  [file_name]        Open the first file matching [file_name]"
    echo_tabulated ". -i/issue [issue number]     Open the [issue_number]."
    echo_tabulated ". -b/issues                   Open issues list"
    echo_tabulated ". -u/pulls                    Open the pull requests list"
    echo_tabulated ". -p/pull [pull number]       Open the pull request [pull_number]"
    echo_tabulated ". -a/actions                  Open the actions"
    echo_tabulated ". -o/compare                  Open the compare view"
    echo_tabulated ". -c/commit                   Open the last commit"
    echo_tabulated ". -s/commits                  Open the commits list"
    echo_tabulated ". -d                          Open the current branch"
    return 0
  end

  if set --query _flag_f
    set file_path (find . -name "*$_flag_f*")
    set file_path $file_path[1]
    if not set --query file_path
      echo_error "File $_flag_f not found."
      return 1
    end
    set url "https://github.com/"(git_org_repo)"/blob/"(git_branch)"/$file_path"
  else if set --query _flag_i
    set url "https://github.com/"(git_org_repo)"/issue/$_flag_i"
  else if set --query _flag_a
    set url "https://github.com/"(git_org_repo)"/issues"
  else if set --query _flag_u
    set url "https://github.com/"(git_org_repo)"/pulls"
  else if set --query _flag_p
    set url "https://github.com/"(git_org_repo)"/pull/$_flag_p"
  else if set --query _flag_a
    set url "https://github.com/"(git_org_repo)"/actions"
  else if set --query _flag_o
    set url "https://github.com/"(git_org_repo)"/compare/"(git_branch)
  else if set --query _flag_c
    set url "https://github.com/"(git_org_repo)"/commit/"(git_commit)
  else if set --query _flag_s
    set url "https://github.com/"(git_org_repo)"/commits/"(git_branch)
  else if set --query _flag_m
    set url "https://github.com/"(git_org_repo)"/tree/"(git_branch)
  end
  if set --query url
    open $url
  else
    echo_error "No valid argument provided."
  end
  return 0
end
