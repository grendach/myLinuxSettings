# .bashrc


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias ll='ls -al --color'
alias ls='ls --color'
alias home='cd /home/grendach/my/'
alias nokia='cd /home/grendach/my/devops/Nokia/'
alias dvps='cd /home/grendach/my/devops/'
alias my='cd /home/grendach/my/devops/my_projects'

export GOPATH=$HOME/my/go
export GOBIN=$HOME/my/go/bin



# Show git branch name
force_color_prompt=yes
color_prompt=yes
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
if [ "$color_prompt" = yes ]; then
 PS1='\[\033[01;32m\]\[\033[00m\]\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
else
 PS1='\w$(parse_git_branch)\$ '
fi
unset color_prompt force_color_prompt




# Colors on comand promt
#PS1='\[\033[1;36m\]\u\[\033[1;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[1;31m\]\$\[\033[0m\] '
