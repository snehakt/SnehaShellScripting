declare -a fruits=("mango" "gauva" "grapes" "apple")
unset fruits[0]
echo ${fruits[@]}
