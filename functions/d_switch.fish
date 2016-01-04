function d_switch
    set -l input (dirh)
    set -l input $input $argv
    _d_switch_helper $input
end

