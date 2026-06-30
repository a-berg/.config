#!/bin/nu

# 1. Define your repository path
let repo_dir = "./" | path expand

# 2. Get all directories inside the repository (excluding hidden ones like .git)
let config_dirs = (
    ls $repo_dir
    | where type == dir and name !~ ".git$"
    | get name
)

# 3. Loop through and symlink each folder into ~/.config
$config_dirs | each { |dir_path|
    let folder_name = $dir_path | path basename
    let target_path = $"~/.config/" | path expand
    
    # Create the symlink using the external OS command
    # ^ln -s $dir_path $target_path
    print $"Linked ($folder_name) to ($target_path)"
}
