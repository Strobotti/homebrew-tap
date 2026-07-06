# Homebrew Tap

Homebrew cask formulas for [Strobotti](https://github.com/Strobotti)'s macOS tools.

## Installation

```bash
brew tap strobotti/tap
```

## Available casks

| Cask            | Description                                 |
|-----------------|---------------------------------------------|
| `linkquisition` | Fast, configurable browser-picker for macOS |

```bash
brew install --cask linkquisition
```

## Troubleshooting

Apps in this tap are not notarized with Apple. After installation, run:

```bash
xattr -cr /Applications/<AppName>.app
```
