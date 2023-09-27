# NAME

	tdiff - interactive tree diff

![COMMON](https://github.com/nkh/tdiff/blob/main/media/mode_common.png)

# SYNOPSIS

	tdiff dir1 dir2

# Options

| short      | long          | function                                         |
| ---------- | ------------- | ------------------------------------------------ |
| -g         |               | generate diff data and exit                      |
| -m         | --mode        | modes: all/common/diff, default:common           |
| -M         |               | display manifest                                 |

# DESCRIPTION

***tdiff*** presents two directories as trees, highlighting differences.

I wrote *tdiff* because I couldn't find a TUI application with the functionality I needed. If you know of any please let me know.

I wrote *tdiff* for myself so it fits my needs and taste, and environment, I hope it will be useful to other, ideas and patches are welcome. 

## Highligting

Two trees with highlighted differences are displayed in the terminal.

- missing file in one of the trees are displayed with a red background
- files with differences have a yellow background

While working in *tdiff* you may modify, delete, or copy files, the background color will be adjusted to reflect the change.

- if you delete a file it will be displayed with a red background, lighter in color so you can see the difference between the files that didn't exist and those you have removed
- copied files are displayed with a blue background
- merged files are displayed with a green background

## Modes

*tdiff* has multiple mode, although you could go from one to the other, they are not synchronized as it makes little sense in real use cases.

Default mode: **common**

| mode        | operation                                            | usage                                       |
| ----------- | ---------------------------------------------------- | ------------------------------------------- |
| all         | show all the files in the directories                | for general directory diffs                 |
| common      | show all the files that are different or deleted     | for synchronizing directories               |
| diff        | show a single tree with the files that are different | for fixing merge conflicts                  |
| all_d2_only | show a single tree for directory 2                   | a prototype with all diffs in a single tree |

![ALL](https://github.com/nkh/tdiff/blob/main/media/mode_all.png)

![DIFF](https://github.com/nkh/tdiff/blob/main/media/mode_diff.png)

![ONLY_D2](https://github.com/nkh/tdiff/blob/main/media/mode_only_d2.png)

## Current entry and movements

*tdiff*'s top line is the current selection.

Apart from the up/down movements you can:

- jump directly to the next/previous change
- search for a changed file
- search for any file

## Fixing differences in files, ie: git merge conflicts

Pressing **Return** will open the files in *vimdiff* (configurable)

If the *auto_advance* variable is set and the files are identical after editing, the next difference will be selected. 

## A file on one side and nothing on the other side

The file that exists will be open in *vim*.

## Copy files and directories

You can copy files or directories from one side to the other using <cl> or <cr>. If you try to copy a file that doesn't exist the file in the other tree will be deleted.

## Delete files or directories

You can delete files and directories on one side or on both sides.

## File management

If you configure a file manager, you can open both tree in it, see the configuration for an example.

## Divers functions

Copy the paths to the clipboard.

# Bindings

See ***Paneless*** for default bindings https://github.com/nkh/paneless

## Tdiff bindings

| binding | function                     |
| ------- | ---------------------------- |
| ?       | show bindings                |
| m/M     | next/previous mode           |
| n/N     | next/previous diff           |
| a       | scroll up one level          |
| z       | scroll down one level        |
| s       | scroll up same level         |
| x       | scroll down same level       |
| b       | fzf to diff                  |
| gff     | fzf to diff                  |
| B       | fzf to file                  |
| dd      | delete both sides            |
| dl      | delete left side             |
| dr      | delete right side            |
| cl      | copy to left side            |
| cr      | copy to right side           |
| yy      | copy both path to clipboard  |
| yl      | copy left path to clipboard  |
| yr      | copy right path to clipboard |
| ENTER   | open diff/file/directory     |
| F       | open file manager            |
| i       | display stats                |
| AL      | flip Action Left             |
| ZL      | flip line number overlay     |
| ZL      | flip line totali             |

# EXAMPLES

## Sort order

	LC_COLLATE=C tdiff test1 test2

## limiting entry types by passing argument to *find(1)*

	TDFA='-type d' tdiff test/dir*

# CONFIGURATION

At the top of the *tdiff.pless* file you will find these configuration variables, they will be moved to a configuration file in future versions.

```bash
# diff colors
DELETED=$'...'
DIFF=$'...'
ONLY=$'...'

# color for elements you have manipulated
INT_DELETED=$'...'
INT_DIFF=$'...'
INT_COPIED=$'...'
INT_SYNCHED=$'...'

auto_advance=1             # go to next diff automatically
confirmation=              # confirm actions
left_side_action=          # "delete in" / "copy to" the left side tree 

DIFF_TOOL=vimdiff
FILE_EDIT=vim
DIR_EDIT=open_in_ftl

open_in_ftl() { tabs= ; for p in "$PWD/$1/$3" "$PWD/$2/$3" ; do [[ -e "$p" ]] && tabs+="$p$'\n'" ; done ; tmux new-window "ftl -t <(echo -n "$tabs")" ; }
```
They reflect my environment so you'll need to set them up if they don't match yours. You certainly will have to set your file manager.

# DEPENDENCIES

- Bash
- diff
- tree
- Paneless https://github.com/nkh/paneless
- Perl
- Awk
- FZF

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

