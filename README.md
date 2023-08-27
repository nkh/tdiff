# NAME

	tdiff - interactive tree diff

![GUI](https://github.com/nkh/tdiff/blob/main/media/tdiff.png)

# SYNOPSIS

	tdiff dir1 dir2

# DESCRIPTION

***tdiff*** diffs two directories and presents the diff as a tree with different and deleted files highlighted.

I wrote *tdiff* because I couldn't find an equivalent application.

*tdiff* is not, yet, a fully functional diff TUI application but it can

- diff and display two trees with highlighted differences in a terminal,
- display the diff in different modes
- jump from to files that have changed
- open different files in vimdiff (configurable)
- open files in vim (configurable)
- open directories in a file manager (configurable)

It can't, but will given time or patches:

- synchronize files or directories
- delete files or directories
- update the diff view if something has changed

## Modes

| mode        | operation                                            |
| ----------- | ---------------------------------------------------- |
| all         | show all the files in the directories                |
| common      | show all the files that are different or deleted     |
| diff        | show a single tree with the files that are different |
| all_d2_only | show a single tree for directory 2                   |

## Options

| short      | long          | function                                         |
| ---------- | ------------- | ------------------------------------------------ |
| -g         |               | generate diff data and exit                      |
| -m         | --mode        | modes: all|common|diff, default:all              |
|            | --no-diff     | no file diff, use when comparing lists           |
|            | --og          | display generation directory                     |

## Bindings

See ***Paneless*** for default bindings https://github.com/nkh/paneless

### Tdiff extra bindings

| binding | function                       |
| ------- | ------------------------------ |
| m       | next mode                      |
| n       | next diff                      |
| N       | previous diff                  |
| b       | fzf to diff                    |
| gff     | fzf to diff                    |
| ENTER   | open diff/file/directory       |

Binding: *enter*

It will open files in an editor, see ***CONFIG*** below, or a file manager.

# EXAMPLES

## find which directories are in one but not the other

	TDFA='-type d' tdiff --no-diff test/dir*

## Compare 2 lists

	tdiff <(echo -e 'abc\ndef\n123\n456') <(echo -e 'abc\ndef1\n1234\n456') 

## Sort order

	LC_COLLATE=C tdiff test1 test2

# CONFIGURATION

At the top of the *tdiff.pless* file you will find these configuration variables

```
DIFF_TOOL=vimdiff
FILE_EDIT=vim
DIR_EDIT=open_in_ftl

open_in_ftl() { tabs= ; for p in "$PWD/$1/$3" "$PWD/$2/$3" ; do [[ -e "$p" ]] && tabs+="$p$'\n'" ; done ; tmux new-window "ftl -t <(echo -n "$tabs")" ; }
```
They reflect my environment so you'll need to set them up if they don't match yours. You certainly will have to set your file manager.

# DEPENDENCIES

- Bash
- Perl
- Awk
- tree
- diff
- FZF
- Paneless https://github.com/nkh/paneless

# INSTALL

Clone the repository and add it to your PATH; or link/copy the files to somewhere in your PATH.

# CONFIGURATION

The *tdiff* file you run contains the configuration and bindings (press 'c' to see the bindings in FZF).

# AUTHORS

	Khemir Nadim ibn Hamouda
	https://github.com/nkh
	CPAN ID: NKH
    
# LICENCE

	© Nadim Khemir 2023, Artistic licence 2.0

