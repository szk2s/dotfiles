if [ -z "$DOT_DIRECTORY" ]; then
  echo "Cannot find environment variable DOT_DIRECTORY"
  exit 1
else
  cd ${DOT_DIRECTORY}

  for f in .??*
  do
    [[ ${f} = ".git" ]] && continue
    [[ ${f} = ".gitignore" ]] && continue
    ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
  done
  echo $(tput setaf 2)All files linked successfully!. ✔︎$(tput sgr0)
fi

exit 0