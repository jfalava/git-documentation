# SSH Clone

## Delete old credentials

```bash
git config credential.helper
```

Windows

```powershell
printf "protocol=https\nhost=github.com" | git credential-manager-core erase
```

macOS  

```bash
printf "protocol=https\nhost=github.com" | git credential-osxkeychain erase
```

## GCM

[GitHub Credential Manager](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)