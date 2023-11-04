declare -a flowers=("rose" "jasmine" "Sunflower" "marigold")
echo ${flowers[@]:1:2}
echo ${flowers[@]:2:1}

#To get same statement as output
echo {#flowers[@]}


