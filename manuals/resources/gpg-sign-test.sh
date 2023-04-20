#!/bin/bash

# Fetch default GPG key
DEFAULT_KEY=$(gpg --list-secret-keys --keyid-format LONG | grep sec | awk '{print $2}' | cut -d '/' -f 2)

# Configure Git to use default GPG key
git config --global user.signingkey $DEFAULT_KEY
git config --global commit.gpgsign true

# Create a new Git repository
mkdir myrepo
cd myrepo
git init

# Create a new file and add it to the repository
echo "Hello, world!" > myfile.txt
git add myfile.txt

# Create a signed commit
git commit -S -m "Initial commit"

# Verify the signed commit
git log --show-signature