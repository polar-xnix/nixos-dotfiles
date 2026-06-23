# My dotfiles for NixOS

## Includes
* **Home Manager Configs**
* **Flakes Version Control for Nix unstable Packages**
* **KDE Plasma Desktop Environment**
* **Custom Neovim Config**
* **Kitty Terminal Emulator**
    * Tokyo Night theme
    * Cursor trails
    * JetBrains Mono Nerd Font

## Repository Structure
```text
.
├── configuration.nix
├── flake.lock
├── flake.nix
├── home.nix
├── modules
│   ├── boot.nix
│   ├── desktop.nix
│   ├── locale.nix
│   ├── packages.nix
│   ├── sound.nix
│   └── users.nix
├── neovim
│   └── init.lua
└── README.md
```

---

## Note

* Clone this repo as you please and put the files in /etc/nixos. 
* Use your own hardware-configuration.nix file.

