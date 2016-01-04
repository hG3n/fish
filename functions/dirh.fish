function dirh --description "Print the current directory history (the back- and fwd- lists) without colored last element"

	if count $argv >/dev/null
		switch $argv[1]
			case -h --h --he --hel --help
				__fish_print_help dirh
				return 0
		end
	end

	# Avoid set comment
	set -l current (command pwd)
	set -l separator " "
	set -l line_len (math (count $dirprev) + (echo $dirprev $current $dirnext | wc -m) )

	for i in $dirprev
		echo -n -e $i$separator
	end

	echo -n -e $current$separator

    # BSD seq 0 outputs '1 0' instead of nothing
    if count $dirnext > /dev/null
        for i in (seq (echo (count $dirnext)) -1 1)
            echo -n -e $dirnext[$i]$separator
        end
    end

	echo
end

