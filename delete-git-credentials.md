# Delete stored ```git``` credentials

Old

## Check where are the credentials stored

```bash
git config credential.helper
```

## If stored in

Windows Git Bash (previous command returns ```manager```)

```powershell
printf "protocol=https\nhost=git.repo.domain" | git credential-manager-core erase
```

macOS (previous command returns ```osxkeychain```)

```bash
printf "protocol=https\nhost=git.repo.domain" | git credential-osxkeychain erase
```

Changing ```git.repo.domain``` with your ```git``` repository
