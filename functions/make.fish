function make --description 'make wrapper to automatically use -j number of cpu cores'

  switch(uname)
    case Linux
      set -l number_of_cores (cat /proc/cpuinfo | grep processor | wc -l)
    case Darwin
      set -l number_of_cores (sysctl -n hw.ncpu)
  end

  make -j$number_of_cores $argv
end
