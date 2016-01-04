function prompt_long_pwd --description 'Print the current working directory'
  echo $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||'
end

function fish_prompt
  # print empty line
  echo ''
  set_color --bold red
  printf '%s' (whoami)
  set_color normal
  printf ': '

  set_color blue
  printf '%s' (prompt_long_pwd)
  set_color normal

  printf ' → '
  set_color 625f4a
  if test -e .git
    printf "⚧ %s" (git rev-parse --abbrev-ref HEAD)
  else
    printf '○'
  end
  set_color normal

  # Line 2
  echo
  if test $VIRTUAL_ENV
      printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
  end
  printf '↪ '
  set_color normal
end
