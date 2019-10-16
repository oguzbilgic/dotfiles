# Save this as ./config/fish/functions/gh.fish

# Prints the remote url
# Example: git@github.com:oguzbilgic/dotfiles.git
function origin
  echo (git remote get-url origin)
end

# Prints the origin and remote
# Example: oguzbilgic/dotfiles
function org_repo
  echo (origin | python -c "import sys; url = sys.stdin.readlines()[0].strip(); print(url.split(':')[1][:-4)]")
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
  if test (count $argv) -lt 1
    open "https://github.com/"(org_repo)"/tree/"(branch)
  else if test -f $argv[1]
    open "https://github.com/"(org_repo)"/blob/"(commit)"/"(echo $argv[1])
  else if test $argv[1] = "issues"
    open "https://github.com/"(org_repo)"/issues"
  else if test $argv[1] = "pulls"
    open "https://github.com/"(org_repo)"/issues"
  else if test $argv[1] = "actions"
    open "https://github.com/"(org_repo)"/issues"
  else if test $argv[1] = "compare"
    open "https://github.com/"(org_repo)"/compare/"(branch)
  else if test $argv[1] = "commits"
    open "https://github.com/"(org_repo)"/commits/"(branch)
  else if test $argv[1] = "commit"
    open "https://github.com/"(org_repo)"/commit/"(commit)
  end
end
