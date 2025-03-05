❄️ NixOS Config

# INSTALL OS

- git clone https://github.com/volodya261/nix-my-conf.git && cd HyprNix

Разметка диска (перед запуском поменять имя диска)
```
sudo nix --experimental-features "nix-command flakes" run github:nix-community/disko/latest -- --mode destroy,format,mount ./btrfs-subvolumes.nix
sudo nixos-generate-config --root /mnt
sudo cp /mnt/etc/nixos/hardware-configuration.nix ./hosts/host-name/
sudo nixos-install --flake ./#nix-pc
sudo nixos-enter --root /mnt -c 'passwd user'
cp HyprNix /mnt/home/user
```
# POST INSTALL
`cd ~/HyprNix && home-manager swith --flake ./`

# KEYBINDS
## manager workspace
| Key Combination                  | Action                |
| -------------------------------- | --------------------- |
| SUPER + [1-9] or SUPER + NUM_1-9 | Change workspace      |
| SUPER + ALT + [1-9]              | Move window           |
| ALT + T                          | Telegram              |
| ALT + O                          | Obsidian              |
| ALT + S                          | Steam                 |
| ALT + N                          | Nekoray               |
| SUPER + F                        | Browser               |
| SUPER + Backpase                 | Power Manager         |
| SUPER + Delete                   | Kill Hyprland session |
| SUPER + Tab                      | Window active         |
| SUPER + V                        | Bufer                 |
| SUPER + Enter                    | Terminal              |
| SUPER + Q                        | Kill focus window     |
| SUPER + <>                       | move focus windows    |
| ALT + HJKL                       | vim move focus window |
| ALT + Enter                      | Full window           |
