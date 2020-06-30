# my_emacs

### Initialization

Simply clone this, move to your home directory, and rename this file .emacs.d

The first time it's run a large number of files may need to be downloaded from melpa, and an elpa folder will be created automatically. I've zipped up the elpa file I had just as a backup, but it can be completely ignored or deleted it is not used.

You can create a directory called scripts in this folder, and any files should be automatically loaded in by the init.el file on startup

### Keybindings

Most keybindings are listed in the init.el file, look for the "use-package" calls, most of these will have a :bind section that will display any modified keybindings. There are a couple further down in the file that aren't related to any specific package


