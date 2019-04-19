# Aexoden's Dotfiles (forked from holman does dotfiles)

Your dotfiles are how you personalize your system. These are mine.

If you're interested in the philosophy behind why projects like these are
awesome, you might want to [read holman's post on the
subject](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/).

## Topical

Everything is built around topic areas. If you're adding a new area to your
dotfiles, simply add a new directory to the `topics` directory and put any files
there. (The `topics` directory is only there for organizational purposes, and
none of the scripts should actually require its use--you're free to put files
wherever you want.)

Anything with an extension of `.zsh` will be automatically included into your
shell, and anything with an extension of `.symlink` will be symlinked with a `.`
prefix and without the extension into `$HOME` when you run `scripts/bootstrap`.

## Usage

I recommend you [fork the repository](https://github.com/aexoden/dotfiles/fork),
remove anything you don't need or want, and add or modify anything you do.

```zsh
git clone https://github.com/aexoden/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
scripts/bootstrap
```

This will symlink the appropriate files in `.dotfiles` to your home directory.
Everything is configured and tweaked within `~/.dotfiles`.

You will probably want to modify `topics/zsh/config.zsh`, as it provides the
basic configuration for your shell.

If you have any local environment variables you need to define, do so in
`$HOME/.localrc`. They will be automatically loaded.

## Components

There are several special files in the hierarchy:

- **bin/**: Anything in `bin/` will be added to your `$PATH` and be made
  available everywhere.
- **\*/path.zsh**: Any file named `path.zsh` is loaded first and is expected to
  set up `$PATH` or similar.
- **\*/\*.zsh**: Any other files ending in `.zsh` will be loaded into your
  shell.
- **\*/completion.zsh**: Any file named `completion.zsh` is loaded last and is
  expected to set up autocomplete.
- **\*/\*.symlink**: Any file ending in `*.symlink` will be symlinked into your
  `$HOME`. This is so you can keep all of those files versioned in your dotfiles
  directory, but still keep them in your home directory. The symlinks are
  generated when you run `scripts/bootstrap`.

## Bugs

Ideally, this would work for everyone. However, there is certainly a chance that
settings specific to my own machines have crept into the repository. If you do
run into something like that, please [open an issue](https://github.com/aexoden/dotfiles/issues) on this repository and I will
see what I can do.

## Acknowledgements

I originally forked this repository from [Zach Holman](https://zachholman.com)'s
[dotfiles](https://github.com/holman/dotfiles). I did some slight customization
at first, but eventually rewrote much of the structure. I've removed most of the
references to MacOS (as I have no such machines), and have otherwise changed
things to reflect my own tastes. If you don't like my dotfiles, you may yet like
his, so check them out.
