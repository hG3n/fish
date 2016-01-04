function make_mine --description "chmod and chown the given application in order no not need sudo anymore"
  set -l program $argv
  chmod 6555 $program
  sudo chown root $program
end

