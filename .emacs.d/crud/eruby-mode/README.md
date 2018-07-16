# eruby-mode

This is an Emacs package with a minor mode for editing eRuby (`.erb`)
template files.

eRuby files are regular files with embedded placeholder sections
containing Ruby code.  Depending on the kind of the embedding file and
how complex the embedded content is, you might want to consider
different ways of editing them in Emacs.

This package is mainly intended for editing configuration file
templates in Chef and Puppet and the like, where the embedding files
can be of a wide variety (configuration files, YAML, shell scripts,
whatever) and the embedded Ruby is often very simple.  You edit the
file using its normal major mode, and this minor mode will highlight
the placeholder sections.  This package will automatically set that
up.

If what you are editing is more of the "web" content variety, you
might want to consider one of these packages instead:

- [`mmm-mode`](https://github.com/purcell/mmm-mode)
- [`web-mode`](http://web-mode.org/)

Of course, with some clever configuration, you can install all of
these packages and decide which one to use per file or project.
