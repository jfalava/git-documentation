# SSH Operations

SSH keys are used in Git to securely authenticate and connect to remote repositories, such as GitHub or Bitbucket.  
SSH keys provide a way for Git to verify that you are who you say you are, and that you have permission to access the repository.

## Setting up SSH for `git`

1. Configure Git to use your SSH key. This tells Git to use your SSH key when connecting to remote repositories:

    ```bash
    git config --global core.sshCommand "ssh -i ~/.ssh/<private key>"
    ```

1. Test your SSH connection, change `repo.domain` with your Git repository:

    ```bash
    ssh -T git@repo.domain
    ```

* Usage. Change `<command>` with any operation (like `clone`):

    ```bash
    git <command> git@repo.domain:username/repo.git
    ```
