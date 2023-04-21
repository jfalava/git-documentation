# SSH Signing

## Required: run the command to disable (if enabled) GPG signing for Git commits

```bash
git config --global commit.gpgsign false
```

1. Generate an SSH key pair to generate a new SSH key:

    ```bash
    ssh-keygen -t rsa -b 4096 -C <your-email@example.com>
    ```  

2. Add your public key to your Git account:
    1. Copy your public key to the clipboard:

        ```bash
        cat /path/to/public/key.asc
        ```

    2. Go to your Git account settings and click on `SSH and GPG keys`.  
    3. Click on "New SSH key" and paste your public key into the `Key` field.
    4. Give your key a title and click `Add SSH key`.  

3. Configure Git to use your SSH key:  
    > Permissions `chmod 600`-level like are needed for the tool to consider the key secure and be able to use it.
    1. Run the command to add your private key to the SSH agent:

        ```bash
        ssh-add /path/to/private/key
        ```

    2. Run the command to set your email, same email used when the SSH key was generated:

        ```bash
        git config -global user.email <your-email@example.com>
        ```

    3. Run the command to set your name for Git:

        ```bash
        git config --global user.name <Your Name>
        ```

    4. Run the command to specify thelocation of your private SSH key:

        ```bash
        git config --global core.sshCommand </path/to/private/key>
        ```

    5. Run the command to specify the location of your private SSH key for signing commits:

        ```bash
        git config --global signing.key /path/to/private/key 
        ```
