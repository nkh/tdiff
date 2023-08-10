# tdiff

An interactive terminal diff application

# General features

- The application accepts two. or more, directores, files, commands that generate lists

- option: exporting diff files

- option are in a file, passed as an argument in ENV variable

# Third party wrapper

- Version Control Integration, an option for users to specify specific revisions or branches to compare against.

- Directory Comparison between Two Git Branches

# Filtering

- Inclusion Filter

- Exclusion Filter, also available in the config

- Multiple Filters

- Combining Filters or use external filter written in a more advanced language

- option: limit the depth of the diff.

- filter files base on when they were modified last, options to find, different filter for each side possible

- Case Sensitivity, case-sensitive or case-insensitive when matching file and folder names.

- Exclude Empty Directories

# * -mtime -3
# -not -path "*/\.git/*"
# -not -path "*/_out_nadim/*"
# -not -path "*ftl/var/*"
# -not -path '*/_build/*'
# -not -path '*/*\.sw*'
# -not -path '*/blib/*'
# -iname '*.log'
# -size +5M -mtime -700 -not -path "*/video_backup/*" -group nadim
# * \( -type d -printf "%p/\n" , ! -type d -print \)
# find /{,usr/}{,s}bin/ -type f -ls | awk '$3~/^...s/'
# find _out_nadim/ -type f -name "*.pbs_md5" -printf "%s+"; echo 0;
# -maxdepth 1 -name '.*' | awk '{print "--exclude " $1}'
# . ! -readable -prune
# find -not -empty -type f -printf "%s\n" | sort -rn | uniq -d 
# Diff

- Comparison with ignored line ending and/or whitespace 

	DIFF_OPTIONS="--ignore-space-change" tdiff file1 file2
	required a full diff not -q

# Display

- Details Panel: - file size, modification date, and permissions

- preview 

- Side-by-Side Content Preview/Diff

- Synchronize the content between the two directories.

- Copy and Delete files/folders.

- Progress Indicators.

- Search Functionality.

- Keyboard Shortcuts

- Multi-Select Functionality for copying, moving, or deleting.

- Undo/Redo Functionality

- Open Diff Files in Text Editor, in hexdiff 

- Open Directories in File Manager

- Customizable Editors and File Managers

- Color the tree glyphs to show where the diffs are located

- Hierarchical Tree View, collapsible/expandable, remember the folding.

- Start folded/unfolded

- Sorting and Filtering, on attributes such as file name, size, modification date, or file type.

- write the current sessions options if they are changed, including filters, depth, ...

- Visual Indicators for Modified Files 

# Virtual directories

For example, the content of the directory description YAML file (`/path/to/directory_description.yaml`) could be like this:

```yaml
# /path/to/directory_description.yaml
- path: /dir1
  contents:
    - file1.txt
    - file2.txt
    - subfolder1:
        - subfile1.txt
    - subfolder2:
        - subfile2.txt
```
