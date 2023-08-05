# tdiff
an interactive  terminal directory diff application

When the interactive application for comparing two directories is started on the command line, it can accept various options and arguments to customize its behavior. Here are some options the application takes when launched from the command line:

1. **Directory Paths**
   - The application should accept two directory paths as mandatory arguments to specify the directories that need to be compared. For example:
     ```
     diff_dirs /path/to/dir1 /path/to/dir2
     ```

2. **Comparison Mode**
   - Provide an optional flag or argument to specify the comparison mode. Users can choose among different modes such as name-based, content-based, size-based, or timestamp-based comparison. The default mode could be name-based comparison.
     ```
     diff_dirsy --mode=content /path/to/dir1 /path/to/dir2
     ```

3. **Output Format**
   - Allow users to specify the output format for the comparison results. Options may include displaying results in the terminal or exporting them to a file in various formats like plain text, JSON, or XML.
     ```
     diff_dirs --output=plain_text /path/to/dir1 /path/to/dir2
     ```

4. **Recursive Comparison**
   - By default, the application should perform a recursive comparison of the directories, including subdirectories and their contents. However, an option could be provided to disable recursive comparison if required.
     ```
     diff_dirs --no-recursive /path/to/dir1 /path/to/dir2
     ```

5. **Ignore Patterns**
   - Allow users to specify file patterns (e.g., file extensions or regex patterns) that the application should ignore during the comparison. This feature is useful to exclude specific files or folders from the comparison results.
     ```
     diff_dirs --ignore=*.tmp --ignore=*.log /path/to/dir1 /path/to/dir2
     ```
5.1 **Include Patterns**

6. **Verbose Output**
   - Provide a flag to enable verbose output, displaying detailed information about the comparison process and highlighting individual file differences.
     ```
     diff_dirs --verbose /path/to/dir1 /path/to/dir2
     ```

7. **Case Sensitivity**
   - Allow users to choose whether the comparison should be case-sensitive or case-insensitive when matching file and folder names.
     ```
     diff_dirs --case-insensitive /path/to/dir1 /path/to/dir2
     ```

8. **Exclude Empty Directories**
   - Offer an option to exclude empty directories from the comparison results.
     ```
     diff_dirs --exclude-empty-dirs /path/to/dir1 /path/to/dir2
     ```

9. **Version Control Integration (Optional)**
   - If the application supports version control integration, provide an option for users to specify specific revisions or branches to compare against.
     ```
     diff_dirs --git-branch=feature-branch /path/to/dir1 /path/to/dir2
     ```

10. **Help and Usage Information**
    - Always provide a flag or command to display help and usage information, explaining available options and how to use the application effectively.
      ```
      diff_dirs --help
      ```

**Interactive Features:**
1. **Clickable File/Folder Items**
   - Each file and folder displayed in the comparison interface will be clickable.
   - When a user clicks on an item, the application will highlight the selected file or folder, making it easier to identify specific changes.

2. **Details Panel**
   - Clicking on a file/folder will open a details panel adjacent to the comparison results.
   - The details panel will show relevant information about the selected item, such as file size, modification date, and permissions (if applicable).
   - For text-based files, such as code files or documents, the panel may also display a preview of the file's content.

3. **Side-by-Side Content Preview (Text-based Files)**
   - When the user selects two text-based files for comparison (e.g., code files), the application will display a side-by-side content preview.
   - The content preview will show the differences between the two files, highlighting added lines in green, deleted lines in red, and modified lines in a different color.

4. **Context Menus**
   - Right-clicking on a file or folder will bring up a context menu with various options for interacting with the selected item.
   - The context menu options may include:
     - Copy: Copy the selected file/folder to a different location.
     - Move: Move the selected file/folder to a different location within the same or different directory.
     - Delete: Delete the selected file/folder with a confirmation prompt to avoid accidental deletions.
     - Open: Open the selected file using the default associated application.
     - Compare: For text-based files, provide an option to compare the selected files' content side by side.

5. **Navigation and Hierarchy**
   - The comparison results will display the directory hierarchy, making it easy for users to navigate through the compared directories.
   - Users will be able to expand and collapse directory nodes to focus on specific areas of interest or to reduce clutter.

6. **Sync Functionality (Optional)**
   - As an advanced feature, the application may offer a "Sync" function that allows users to synchronize the content between the two directories selectively.
   - The sync feature will let users choose which files or folders to update based on the comparison results.

7. **Copy and Delete Confirmation**
   - When performing actions like copying or deleting files/folders, the application will display confirmation prompts to ensure that the user intends to proceed.

8. **Progress Indicators**
   - During the comparison process, the application will provide progress indicators to inform users about the current stage of comparison, especially for larger directories.

9. **Search Functionality**
   - The application may offer a search bar where users can enter specific file or folder names to quickly locate items in the compared directories.

10. **Keyboard Shortcuts**
    - For power users, the application may support keyboard shortcuts for common actions, such as navigating the comparison results, expanding/collapsing nodes, and selecting files/folders.

12. **Multi-Select Functionality**
    - For bulk actions, the application may allow users to select multiple files/folders simultaneously for copying, moving, or deleting.

13. **Undo/Redo Functionality**
    - As an added usability feature, the application may support undo and redo actions to revert changes made during the comparison process.


Filtering:
==========

1. **Inclusion Filter**
   - Allow users to specify a pattern or keyword that defines which directories should be included in the comparison. Directories that match the inclusion filter will be considered for the diff process.
     ```
     diff_dirs --include=docs --include=src /path/to/dir1 /path/to/dir2
     ```
   - In this example, only directories containing "docs" or "src" in their names will be included in the comparison.

2. **Exclusion Filter**
   - Provide an option for users to specify patterns or keywords to exclude directories from the comparison. Directories that match the exclusion filter will be skipped during the diff process.
     ```
     diff_dirs --exclude=logs --exclude=backup /path/to/dir1 /path/to/dir2
     ```
   - In this example, directories with "logs" or "backup" in their names will be excluded from the comparison.

3. **Combining Filters**
   - Allow users to combine inclusion and exclusion filters to create more precise comparisons.
     ```
     diff_dirs --include=src --exclude=tests /path/to/dir1 /path/to/dir2
     ```
   - In this example, only directories with "src" in their names will be considered for the comparison, but any directories with "tests" in their names will be excluded.

4. **Multiple Filters**
   - Allow users to specify multiple inclusion and exclusion filters if needed.
     ```
     diff_dirs --include=docs --exclude=logs --exclude=tmp /path/to/dir1 /path/to/dir2
     ```
   - In this example, directories with "docs" in their names will be included, but directories with "logs" or "tmp" in their names will be excluded from the comparison.

5. **Filtering for Specific Depth**
   - As an optional feature, allow users to specify the depth up to which the filters should be applied. This can be helpful to include or exclude directories only at a specific depth level within the directory tree.
     ```
     diff_dirs --include=docs --depth=2 /path/to/dir1 /path/to/dir2
     ```
   - In this example, the inclusion filter will only be applied up to a depth of 2, meaning only directories directly under `/path/to/dir1` and `/path/to/dir2` with "docs" in their names will be included.

To enhance the interactive features and user experience of the application, we can provide the possibility to open diff files in a text editor and directories in the system's file manager. This functionality allows users to further investigate the differences between files and explore the directories directly from the application. Here's how we can implement these features:

1. **Open Diff Files in Text Editor:**
   - When the user selects two text-based files for comparison and clicks on the "Compare" option in the context menu, the application will open the selected files in the default text editor associated with the system.
   - For example, on Windows, it might open the files in Notepad or Visual Studio Code, while on macOS, it could open them in TextEdit or Sublime Text.

2. **Open Directories in File Manager:**
   - When the user clicks on a file or folder in the comparison results and selects the "Open" option in the context menu, the application will open the file's parent directory or the selected folder in the system's default file manager.
   - For instance, on Windows, it might open the directory in File Explorer, while on macOS, it could open it in Finder or Path Finder.

3. **Customizable Editors and File Managers (Optional):**
   - As an advanced feature, the application may allow users to set their preferred text editor and file manager through configuration options or environment variables.
   - This way, users can choose their favorite editors and file managers to be used whenever they want to open diff files or directories from the application.

4. **Support for Non-Text-Based Files (Optional):**
   - If the application supports binary files or non-text-based files, it can offer an option to open these files in an associated application. For example, opening an image file in an image viewer or a PDF file in a PDF reader.

6. **Handling File Manager and Editor Not Found:**
   - The application should handle scenarios where the default text editor or file manager is not found on the system. In such cases, it can display an error message or offer alternative options.

To enhance the user interface (UI) and provide users with comprehensive information about files and directories, the application can offer various options to display attributes. These options can be user-configurable, allowing users to customize the level of detail they want to see during the directory comparison process. Here are some possibilities:

1. **Basic Attributes (Default):**
   - The application's default view can display basic attributes for files and directories, such as file/folder names, file sizes, and modification dates.
   - Basic attributes provide essential information without overwhelming the user with excessive details.

2. **Advanced Attributes (Optional):**
   - Users can choose to enable an "Advanced" view, which displays additional attributes for files and folders.
   - Advanced attributes may include file permissions, owner/group information, file type, and the number of subdirectories/files within each folder.

3. **File Type Icons:**
   - Instead of displaying the file type as plain text, the application can use icons to represent different file types (e.g., icons for documents, images, code files).
   - Using icons makes it visually appealing and helps users quickly identify the types of files in the comparison.

4. **File Preview (Optional):**
   - For text-based files, the application can provide a "Preview" option that allows users to view a portion of the file's content directly within the UI.
   - The file preview can assist users in identifying the differences in text-based files without having to open them in a separate editor.

5. **Color-Coded Differences:**
   - If the application supports content-based comparison, display the differences in text-based files with color-coded highlights (e.g., added lines in green, deleted lines in red).

6. **Hierarchical Tree View:**
   - Organize the directory comparison results in a hierarchical tree view, showing the file and folder structure clearly.
   - Subdirectories can be collapsible/expandable to help users navigate and focus on specific areas of interest.

7. **Sorting and Filtering:**
   - Allow users to sort the comparison results based on attributes such as file name, size, modification date, or file type.
   - Implement filtering options to show only specific types of files (e.g., images, documents) or files matching certain criteria (e.g., files modified within a specified date range).

8. **Interactive Tooltips (Optional):**
   - Provide tooltips that appear when hovering over file or folder names, showing additional attributes or information like full file paths, permissions, or owner/group details.

9. **Detailed Size Information:**
   - For directories, display the size information that includes the cumulative size of all files and subdirectories within the directory.

10. **File Icons Based on File Types (Optional):**
    - In addition to using icons for different file types, consider custom icons for commonly used file types, making them easily recognizable.

11. **Visual Indicators for Modified Files (Optional):**
    - In the hierarchical tree view, display visual indicators (e.g., an asterisk or change icon) next to modified files or folders to quickly identify changes.


Virtual directories
===================

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

Tmux Integration Options
========================
```
run_in_tmux: false # Set to true to run the comparison in a new tmux session
tmux_session_name: "dir_comparison" # Name of the tmux session
tmux_window_name: "directory_diff" # Name of the tmux window
run_file_diff_in_tmux_pane: false # Set to true to run file diffs in separate tmux panes
run_subdir_diff_in_tmux_pane: false # Set to true to run subdirectory diffs in a separate instance in a tmux pane
```

```
==============================================================================
Interactive Directory Comparison Tool
==============================================================================

Directories to Compare:
1. /path/to/dir1
2. /path/to/dir2

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

------------------------------------------------------------------------------
Commands:
[1] Open file1.txt in editor
[2] Open file2.txt in editor
[3] Open file3.txt in editor
[4] Open subfolder1 in file manager
[5] Open subfolder2 in file manager
[6] Open subfolder3 in file manager

------------------------------------------------------------------------------
Additional Options:
- Press [C] to change the comparison mode (Content-based, Name-based, Size-based).
- Press [F] to apply filters and include/exclude specific files/directories.
- Press [S] to sort the comparison results based on various attributes.
- Press [Q] to quit the application.

==============================================================================
```

```
==============================================================================
Interactive Directory Comparison Tool
==============================================================================

Directories to Compare:
1. /path/to/dir1
2. /path/to/dir2

Comparison Mode: Name-based

------------------------------------------------------------------------------
Directory Comparison Results:

[path/to/dir1]                          | [path/to/dir2]
-------------------------------------- | --------------------------------------
  ├── file1.txt              Size: 512  |   ├── file1.txt            Size: 512  
  │   Modified: 2023-08-05 10:30 AM    |   │   Modified: 2023-08-05 09:55 AM
  │                                   |   │
  ├── file2.txt              Size: 768  |   ├── file3.txt            Size: 1024
  │   Modified: 2023-08-04 02:15 PM    |   │   Modified: 2023-08-04 02:30 PM
  │                                   |   │
  ├── subfolder1                      |   ├── subfolder1
  │   ├── subfile1.txt       Size: 256  |   │   ├── subfile1.txt       Size: 256
  │   │   Modified: 2023-08-04 11:45 AM |   │   │   Modified: 2023-08-04 10:30 AM
  │                                   |   │
  ├── subfolder2                      |   │
  │   ├── subfile2.txt       Size: 128  |   │
  │   │   Modified: 2023-08-03 03:00 PM |   │
  │                                   |   │
  └── empty_dir                       |   ├── subfolder3
                                      |   │   ├── subfile3.txt       Size: 512
                                      |   │   │   Modified: 2023-08-04 12:00 PM
                                      |   │
                                      |   └── empty_dir

==============================================================================
```

# Options
```
directories_to_compare=("/path/to/dir1" "/path/to/dir2")  # List of directories to compare. Specify at least two directories.
comparison_mode="Name-based"                            # The mode used for directory comparison. Valid options: Name-based, Content-based, Size-based. Default: Name-based.
output_format="Plain Text"                              # The format to display the comparison results. Valid options: Plain Text, JSON, XML. Default: Plain Text.
recursive_comparison=true                               # Whether to perform a recursive comparison of subdirectories and their contents. Default: true.
ignore_patterns=("*.tmp" "*.bak")                       # List of file patterns (e.g., extensions, regex patterns) to ignore during comparison.
verbose_output=false                                   # Whether to display detailed information during the comparison process. Default: false.
case_sensitivity=true                                   # Whether the comparison should be case-sensitive when matching file and folder names. Default: true.
exclude_empty_directories=false                        # Whether to exclude empty directories from the comparison results. Default: false.
version_control_integration="Git"                      # Integrates with version control (e.g., Git) to compare against specific revisions or branches.
show_diff_for_text_files=true                          # If enabled, shows the difference between text files in the comparison results. Default: true.
ignore_line_endings=true                               # Whether to ignore line ending differences when comparing text files. Default: true.
ignore_whitespace=true                                 # Whether to ignore whitespace differences when comparing text files. Default: true.
display_attributes=false                               # Whether to display additional file attributes (e.g., permissions, owner, group) in the comparison results. Default: false.
date_format="YYYY-MM-DD HH:mm:ss"                       # The format for displaying file modification dates in the comparison results. Default: "YYYY-MM-DD HH:mm:ss".
display_size=true                                      # Whether to display file and directory sizes in the comparison results. Default: true.
display_permissions=true                               # Whether to display file permissions in the comparison results. Default: true.
display_owner_group=false                              # Whether to display file owner and group information in the comparison results. Default: false.
colorized_output=true                                  # Whether to use colorized output for highlighting differences. Default: true.
include_hidden_files=false                             # Whether to include hidden files in the comparison results. Default: false.
allow_symlinks=true                                    # Whether to follow symbolic links during the comparison. Default: true.
sort_by="Name"                                         # The attribute to use for sorting the comparison results. Valid options: Name, Size, Date. Default: Name.
sort_order="Ascending"                                 # The sort order for the comparison results. Valid options: Ascending, Descending. Default: Ascending.
show_progress_bar=true                                 # Whether to display a progress bar during the comparison process. Default: true.
```

# Optional Sections
```
show_directory_tree=true                               # Whether to display the directory tree view for each directory.
show_commands=true                                     # Whether to display options for opening files and directories in the UI.
show_additional_options=true                           # Whether to display additional configurable options for the directory comparison.
```

# Git Options
```
git_compare_branches=false                             # Whether to enable Git branch comparison (requires version_control_integration="Git").
git_branch1="master"                                   # The first Git branch to compare (requires git_compare_branches=true).
git_branch2="feature-branch"                           # The second Git branch to compare (requires git_compare_branches=true).
git_compare_revisions=false                            # Whether to enable Git revision comparison (requires version_control_integration="Git").
git_revision1="abc1234"                                # The first Git revision to compare (requires git_compare_revisions=true).
git_revision2="def5678"                                # The second Git revision to compare (requires git_compare_revisions=true).
```

Usage:
======

1. Basic Directory Comparison:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2
```

2. Directory Comparison with Content-based Mode:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --mode Content-based
```

3. Directory Comparison with Recursive Comparison and Verbose Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 -r -v
```

4. Directory Comparison with Ignore Patterns and Case Insensitivity:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --ignore "*.tmp" --ignore "*.bak" --case-sensitive false
```

5. Directory Comparison with Git Branches:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --git-branches --branch1 main --branch2 feature-branch
```

6. Directory Comparison with Git Revisions:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --git-revisions --revision1 abc1234 --revision2 def5678
```

7. Directory Comparison with JSON Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --output JSON
```

8. Directory Comparison with Colorized Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --colorized
```

9. Directory Comparison with Size-based Sorting:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --sort-by Size
```

10. Directory Comparison with Hidden Files Included:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --include-hidden
```

11. Directory Comparison with Line Ending and Whitespace Ignored for Text Files:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --ignore-line-endings --ignore-whitespace
```

12. Directory Comparison with Additional Attributes Displayed:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --display-attributes
```

1. Directory Comparison between Two Git Branches:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-branches --branch1 main --branch2 feature-branch
```

2. Directory Comparison between Two Git Revisions:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-revisions --revision1 abc1234 --revision2 def5678
```

3. Directory Comparison between Git Branch and Revision:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-branches --branch1 main --git-revisions --revision2 abc1234
```

4. Directory Comparison between Two Git Revisions with Colorized Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-revisions --revision1 abc1234 --revision2 def5678 --colorized
```

5. Directory Comparison between Git Branches with JSON Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-branches --branch1 main --branch2 feature-branch --output JSON
```

6. Directory Comparison between Two Git Revisions with Displayed Attributes:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-revisions --revision1 abc1234 --revision2 def5678 --display-attributes
```

7. Directory Comparison between Two Git Revisions with Recursive Comparison and Verbose Output:
```bash
$ bash compare_directories.sh /path/to/dir1 /path/to/dir2 --version-control Git --git-revisions --revision1 abc1234 --revision2 def5678 --recursive --verbose
```

