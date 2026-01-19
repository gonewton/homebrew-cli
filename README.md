# Homebrew CLI Tap

This is a Homebrew tap for the `gonewton` CLI tools: `constraint` and `newton`.

## Installation

First, tap this repository:

```bash
brew tap gonewton/cli
```

Then install the tools:

```bash
brew install constraint
brew install newton
```

## Usage

### Constraint

```bash
constraint --help
```

### Newton

```bash
newton --help
```

## Upgrading

To upgrade to the latest version:

```bash
brew update
brew upgrade constraint
brew upgrade newton
```

## Development

This tap is automatically updated when new releases are published to the respective repositories.

To manually update formulas, use the `generate_formula.sh` script:

```bash
./generate_formula.sh constraint --version v1.0.0
./generate_formula.sh newton --version v1.0.0
```