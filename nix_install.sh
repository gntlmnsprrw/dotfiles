#!/bin/bash

# Find all dot files then if the original file exists, create a backup
# Once backed up to {file}.dtbak symlink the new dotfile in place
for file in $(find . -maxdepth 1 -name ".*" -type f  -printf "%f\n" ); do
    if [ -e ~/$file ]; then
        mv -f ~/$file{,.dtbak}
    fi
    ln -s $PWD/$file ~/$file
done

cp /nfs/id_ed25519 ~/.ssh/id_ed25519
chmod 600 ~/.ssh/id_ed25519

echo "Bash shortcuts and theme installed. Reloading bash...."
. .bashrc
echo "Theme installed, and terminal session updated with aliases"