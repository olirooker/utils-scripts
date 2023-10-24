# utils-scripts

## Table of Contents

- [About](#About)
- [Getting Started](#Getting-Started)
- [Usage](#Usage)
- [Authors](#Authors)

## About

A collection of shell scripts that provide various utilities or functionalities. 

## Getting Started

### Prerequisites

A shell environment like bash or zsh.

### Running a Script

To run a script navigate to the file and run `sh file-name.sh`

## Usage
### Adding Script to Your Systems PATH

- Move the script to a directory that's already in your systems `PATH` like `usr/local/bin` or `~/bin`.
- Ensure the script has execute permissions `chmod +x script-name`.
- Run script from any directory by typing `script-name`.

### Create a Global Alias

- Ensure the script has execute permissions `chmod +x script-name`.
- Set up an alias in your shell's config file (eg, `~/.zshrc` for zsh).
- Add an alias to the file `alias script-name="sh /path/to/script/script-name.sh"`.

## Authors

- [Oli Rooker](https://github.com/olirooker)

---

Template based on [The Documentation Compendium](https://github.com/kylelobo/The-Documentation-Compendium/blob/master/en/README_TEMPLATES/Standard.md).
See their [Github page for best practice](https://github.com/kylelobo/The-Documentation-Compendium/tree/master#best_practices).

