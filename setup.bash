if [[ -z $(cat ~/.emacs | grep -i "(load-file \"~/my_emacs/.emacs\")") ]]; then
   cat setup_file >> ~/.emacs
else
     cat ~/.emacs | grep -i "(load-file \"~/my_emacs/.emacs\")"
fi
   
