# SSH Signing

If possible, sign with [GPG](https://git.jfalava.eu/jfalava/gitea-documentation/src/branch/main/pgp-signing.md) instead.

## Required: run the command to disable (if enabled) GPG signing for Git commits

```bash
git config --global commit.gpgsign false
```

1. Generate an SSH key pair to generate a new SSH key:

    ```bash
    ssh-keygen -t rsa -b 4096 -C "your-email@example.com" 
    ```  

2. Add your public key to your Git account:
    1. Copy your public key to the clipboard:

        ```bash
        cat /path/to/public/key.asc
        ```

    2. Go to your Git account settings and click on ```SSH and GPG keys```.  
    3. Click on "New SSH key" and paste your public key into the ```Key``` field.
    4. Give your key a title and click ```Add SSH key```.  

3. Configure Git to use your SSH key:  
    > ```chmod 600``` is needed for the tool to accept the key.
    1. Run the command to add your private key to the SSH agent:

        ```bash
        ssh-add /path/to/private/key
        ```

    1. Run the command to set your email, same email used when the SSH key was generated:

        ```bash
        git config -global user.email "your-email@example.com"
        ```

    1. Run the command to set your name for Git:

        ```bash
        git config --global user.name "Your Name"
        ```

    1. Run the command to specify thelocation of your private SSH key:

        ```bash
        git config --global core.sshCommand "/path/to/private/key"
        ```

    1. Run the command to specify the location of your private SSH key for signing commits:

        ```bash
        git config --global signing.key /path/to/private/key 
        ```
