# NAME

	tdiff - interactive tree diff

![GUI](https://github.com/nkh/tdiff/blob/main/media/tdiff.png)

# SYNOPSIS

	tdiff dir1 dir2

# DESCRIPTION

***tdiff*** diffs two directories and presents the diff as a tree with different and deleted files highlighted.

| mode   | operation                                            |
| ------ | ---------------------------------------------------- |
| all    | show all the files in the directories                |
| common | show all the files that are different or deleted     |
| diff   | show a single tree with the files that are different |

## Options

| short      | long          | function                                         |
| ---------- | ------------- | ------------------------------------------------ |
| -m         | --mode        | modes: all|common|diff, default:all              |
|            | --no-diff     | no file diff, when comparing lists               |

## Bindings

| binding | function                       |
| ------- | ------------------------------ |
| n       | next diff                      |
| N       | previous diff                  |
| b       | fzf to diff                    |
| gff     | fzf to diff                    |
| ENTER   | open diff/file/directory       |

# EXAMPLES

## find which directories are in one but not the other

	TDFA='-type d' tdiff --no-diff test/dir*

## Compare 2 lists

	tdiff <(echo -e 'abc\ndef\n123\n456') <(echo -e 'abc\ndef1\n1234\n456') 

# CONFIGURATION

# DEPENDENCIES

- Bash
- Perl
- Awk
- tree
- diff
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

