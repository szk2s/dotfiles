if 
    cat ~/Brewfile >> ${DOT_DIRECTORY}/Brewfile; sort -u -o ${DOT_DIRECTORY}/Brewfile ${DOT_DIRECTORY}/Brewfile
then
    echo $(tput setaf 2)Merge success! ✔︎$(tput sgr0)
fi
exit 0
