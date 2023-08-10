# NAME

	tdiff - interactive tree diff

![GUI](https://github.com/nkh/tdiff/blob/main/media/tdiff.png)

# SYNOPSIS

	tdiff dir1 dir2

# DESCRIPTION

***tdiff*** diffs two directories and presents the diff as a tree with different and deleted files highlighted.

## Options

| short      | long          | function                                         |
| ---------- | ------------- | ------------------------------------------------ |
|            | --no-diff     | no file diff, when comparing lists               |

## Bindings

| binding | function                       |
| ------- | ------------------------------ |


# EXAMPLES

## find which directories are in one but not the other

TDFA='-type d' tdiff --no-diff test/dir*

## Compare 2 lists

tdiff <(echo -e 'abc\ndef\n123\n456') <(echo -e 'abc\ndef1\n1234\n456') 

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
