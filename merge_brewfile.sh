# Incomplete (shold append and delete line by line)

if 
    cat ~/Brewfile >> ${DOT_DIRECTORY}/Brewfile && sort -u -r -o ${DOT_DIRECTORY}/Brewfile ${DOT_DIRECTORY}/Brewfile; 
    IFS=$'\n'
    for j in $(cat ${DOT_DIRECTORY}/Brewfile)    
    do
        if [[ "$j" =~ tap.* ]]; then
            echo "0"
        fi
    done
    for j in $(cat ${DOT_DIRECTORY}/Brewfile)    
    do
        if [[ "$j" =~ brew.* ]]; then
            echo "1"
        fi
    done
    for j in $(cat ${DOT_DIRECTORY}/Brewfile)    
    do
        if [[ "$j" =~ cask.* ]]; then
            echo "2"
        fi
    done
    for j in $(cat ${DOT_DIRECTORY}/Brewfile)    
    do
        if [[ "$j" =~ mas.* ]]; then
            echo "3"
        fi
    done
then
    echo $(tput setaf 2)Merge success! ✔︎$(tput sgr0)
fi
exit 0
