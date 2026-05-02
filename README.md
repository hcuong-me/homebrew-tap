# Personal Homebrew Tap

Homebrew tap for shipping my CLI tools + a few macOS apps.

## Install

```bash
brew tap hcuong-me/tap
```

## Install Packages

```bash
# formula
brew install hcuong-me/tap/<name>

# cask
brew install --cask hcuong-me/tap/<name>
```

## Packages

### Formulae
- `zenv` — Secure environment variable manager for zsh
- `siyuan-cli` — CLI for SiYuan Note

### Casks

## Update / Uninstall

```bash
brew update
brew upgrade

brew uninstall <formula>
brew uninstall --cask <cask>

# casks only: remove user data
brew uninstall --cask --zap hcuong-me/tap/<name>
```

## Notes

- Run `brew info hcuong-me/tap/<name>` for per-tool caveats (permissions, setup steps, etc.).

## Manual Cleanup (formulae)

Homebrew formulae don’t support --zap. Delete these to “factory reset”: