# tdiff

An interactive terminal directory diff application

# General features

- The application accepts two. or more, directory paths as mandatory arguments, or two lists, or two commands to generate lists, or two lists, or two commands to generate lists

- Users can choose among different modes such as name-based, content-based, size-based, or timestamp-based comparison. The default mode is name-based comparison.

- Specify the output format for the comparison results. Options to display results in the terminal or exporting them to a file.

- An option can limit the depth of the diff.

- filter files base on when they were modified last, options to find, different filter for each side possible

- option are in a file, passed as an argument in ENV variable

- Ignore Patterns

- Include Patterns

- Case Sensitivity, case-sensitive or case-insensitive when matching file and folder names.

- Exclude Empty Directories

- Version Control Integration, an option for users to specify specific revisions or branches to compare against.

- Comparison with gnored line ending and/or whitespace 

- Directory Comparison between Two Git Branches

# Interactive Features

- Clickable File/Folder Items, When clicked an item will be highlight.

- Details Panel
   - Clicking on a file/folder will open a details panel adjacent to the comparison results.
   - The details panel will show relevant information about the selected item, such as file size, modification date, and permissions (if applicable).
   - For text-based files, such as code files or documents, the panel may also display a preview of the file's content.

- Side-by-Side Content Preview/Diff

- Context Menus
     - Copy: Copy the selected file/folder to a different location.
     - Move: Move the selected file/folder to a different location within the same or different directory.
     - Delete: Delete the selected file/folder with a confirmation prompt to avoid accidental deletions.
     - Open: Open the selected file using the default associated application.
     - Compare: For text-based files, provide an option to compare the selected files' content side by side.

- Navigation and Hierarchy, with ability to expand and collapse directory nodes.

- Sync Functionality, synchronize the content between the two directories selectively.

- Copy and Delete files/folders.

- Progress Indicators, inform users about the current stage of comparison, especially for larger directories.

- Search Functionality, offers a search bar where users can enter specific file or folder names.

- Keyboard Shortcuts

- Multi-Select Functionality  for copying, moving, or deleting.

- Undo/Redo Functionality


# Filtering

- Only difference/same

- Inclusion Filter

- Exclusion Filter, also available in the config

- Multiple Filters

- config can be global and local, specific config files can be given on the command line

- Combining Filters or use external filter written in a more advanced language

- Filtering for Specific Depth, specify the depth up to which the filters should be applied

# Interaction

- Open Diff Files in Text Editor, in hexdiff 

- Open Directories in File Manager

- Customizable Editors and File Managers

- Support for Non-Text-Based Files, offer an option to open these files in an associated application.

- Display basic attributes, file/folder names, file sizes, and modification dates.

- Display advanced Attributes, file permissions, owner/group information, file type, and the number of subdirectories/files within each folder.

- File Preview

- Color-Coded Differences

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

Then, you can run the command like this:

```bash
$ bash compare_directories.sh --description /path/to/directory_description.yaml /path/to/dir2 --mode Content-based --colorized --sort-by Name
```

# Tmux Options

```
run_in_tmux: false                  # Set to true to run the comparison in a new tmux session
run_file_diff_in_tmux_pane: false   # Set to true to run file diffs in separate tmux panes
run_subdir_diff_in_tmux_pane: false # Set to true to run subdirectory diffs in a separate instance in a tmux pane
```

```
Directories to Compare:
- /path/to/dir1
- /path/to/dir2

Comparison Mode: Content-based

------------------------------------------------------------------------------
Directory Comparison Results:

[path/to/dir1]
    [F] file1.txt               Size: 512 bytes  Modified: 2023-08-05 10:30 AM
    [F] file2.txt               Size: 768 bytes  Modified: 2023-08-04 02:15 PM
    [D] subfolder1
        [F] subfile1.txt        Size: 256 bytes  Modified: 2023-08-04 11:45 AM
    [D] subfolder2
        [F] subfile2.txt        Size: 128 bytes  Modified: 2023-08-03 03:00 PM

[path/to/dir2]
    [F] file1.txt               Size: 512 bytes  Modified: 2023-08-05 09:55 AM
    [F] file3.txt               Size: 1024 bytes  Modified: 2023-08-04 02:30 PM
    [D] subfolder1
        [F] subfile1.txt        Size: 256 bytes  Modified: 2023-08-04 10:30 AM
    [D] subfolder3
        [F] subfile3.txt        Size: 512 bytes  Modified: 2023-08-04 12:00 PM


[path/to/dir1]                          | [path/to/dir2]
--------------------------------------  | --------------------------------------
  ├── file1.txt              Size: 512  | ├── file1.txt            Size: 512
  │   Modified: 2023-08-05 10:30 AM     | │   Modified: 2023-08-05 09:55 AM
  │                                     | │
  ├── file2.txt              Size: 768  | ├── file3.txt            Size: 1024
  │   Modified: 2023-08-04 02:15 PM     | │   Modified: 2023-08-04 02:30 PM
  │                                     | │
  ├── subfolder1                        | ├── subfolder1
  │   ├── subfile1.txt       Size: 256  | │   ├── subfile1.txt       Size: 256
  │   │   Modified: 2023-08-04 11:45 AM | │   │   Modified: 2023-08-04 10:30 AM
  │                                     | │
  ├── subfolder2                        | │
  │   ├── subfile2.txt       Size: 128  | │
  │   │   Modified: 2023-08-03 03:00 PM | │
  │                                     | │
  └── empty_dir                         | ├── subfolder3
                                        | │   ├── subfile3.txt       Size: 512
                                        | │   │   Modified: 2023-08-04 12:00 PM
                                        | │
                                        | └── empty_dir

```
