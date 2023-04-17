# Delete stored ```git``` credentials

## Check where are the credentials stored

In ```Git Bash``` or your OS ```cli```

```bash
git config credential.helper
```

## If stored in

Windows (previous command returns ```manager```)

```powershell
printf "protocol=https\nhost=git.repo.domain" | git credential-manager-core erase
```

macOS (previous command returns ```osxkeychain```)

```bash
printf "protocol=https\nhost=git.repo.domain" | git credential-osxkeychain erase
```

Changing ```git.repo.domain``` with your ```git``` repository
