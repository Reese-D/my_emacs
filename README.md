# my_emacs

## Version 0.0.0

This is my first attempt at creating a minor versioning system for the changes, in case there's ever a need to revert to some previous working version. This version has been created in an attempt to clean some of the file clutter that has built up as well as organizational change and some refactoring to the .emacs file

### Initialization

clone this repository into your home directory then run the "setup.bash" while inside of the my_emacs folder that is created from the clone. This should add a small command to your .emacs file in your home directory that will run the local one in this repo.

### How versioning works
Finalized versions will end with a .0 at the end. For example, version 1.1.3 would be iteration three off of the 1.1.0 branch, once all iterations were completed and finalized the last version would be saved as version 1.2.0 and merged into master. This means that any version ending in a number other than 0 may not be stable. All finalized versions are tested on Gentoo 17.0 and are not guaranteed to work on anything else. This being said however, I'm not using any gentoo or linux specific libraries so it should hopefully work on any recent emacs system regardless of version

