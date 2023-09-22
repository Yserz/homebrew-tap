# homebrew-tap

| Formula | Description                                                                  | Repository                    |
| ------- | ---------------------------------------------------------------------------- | ----------------------------- |
| myks    | Maintain configuration of many applications for multiple Kubernetes clusters | https://github.com/mykso/myks |

## Installation

```bash
brew tap yserz/tap
brew install <formula_name>
```

## Un-install

```bash
brew uninstall <formula_name>
```

## Development

Debugging local formula:

```bash
HOMEBREW_NO_INSTALL_FROM_API=1 brew install --debug --verbose <formula_name>
```
