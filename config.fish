# set fish greeting
set fish_greeting 'welcome dude...'

# general abbreviations
abbr desk '/Users/hGen/Desktop/'
abbr doc '/Users/hGen/Documents/'
abbr down '/Users/hGen/Downloads/'
abbr vol '/Volumes/'
abbr fishfolder '~/.config/fish/'
abbr clera 'clear'
abbr vimrc 'vim /Users/hGen/.vimrc'
abbr df 'df -h'
abbr mkae 'make'
abbr pingg 'ping -c 3 google.com'
abbr ragner 'ranger'
abbr suranger 'sudo ranger'
abbr t 'tree -AC'
abbr g++ 'g++-5 -std=c++11'

# quick history switch abbreviations
function 0
  set -l dir (d_switch 0)
  cd $dir
end

function 1
  set -l dir (d_switch 1)
  cd $dir
end

function 2
  set -l dir (d_switch 2)
  cd $dir
end

function 3
  set -l dir (d_switch 3)
  cd $dir
end

function 4
  set -l dir (d_switch 4)
  cd $dir
end

function 5
  set -l dir (d_switch 5)
  cd $dir
end

function 6
  set -l dir (d_switch 6)
  cd $dir
end

function 7
  set -l dir (d_switch 7)
  cd $dir
end

function 8
  set -l dir (d_switch 8)
  cd $dir
end

function 9
  set -l dir (d_switch 9)
  cd $dir
end


