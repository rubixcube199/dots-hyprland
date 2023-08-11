<div align="center">
    <h1>[ end-4/dots-hyprland > windoes branch ]</h1>
    <h3> your colleagues will not freak out now </h3>
</div>

## Features
 - Actually has animations similar to Windows
 - You'll see random anime girls instead of Trump in the Widgets panel
 - The icon size doesn't suck

 # Screenshots
 - A video showing everything: https://cdn.discordapp.com/attachments/1114548683770441738/1114548686400266260/hyprland11_fadeout.mp4
 ![dots-hyprland](./assets/screenshot6.png)
 ![dots-hyprland](./assets/screenshot3.png)
 ![dots-hyprland](./assets/screenshot5.png)
 ![dots-hyprland](./assets/screenshot4.png)

## Instructions
 - See the main branch for installation instructions. Dependencies below.
 - Start bar with `eww open winbar`
 - VSCode theme: Community Material Theme Darker, _Hyprland opacity windowrule 0.92_
 - Note that you have to install the Segoe UI Variable font manually

# Dependencies
 - Python dependencies
```
pywal desktop_entry_lib poetry build Pillow
```
 - Normal dependencies
```
[ Possible package names (tries to match Arch) ]
bc blueberry bluez boost boost-libs coreutils dunst findutils fzf gawk gnome-control-center ibus imagemagick libqalculate light networkmanager network-manager-applet nlohmann-json pavucontrol plasma-browser-integration playerctl procps ripgrep socat sox udev upower util-linux xrandr wget wireplumber yad
[ Command for: Fedora (INCOMPLETE command; so there's less name hunting for you) ]
sudo dnf install bc blueberry bluez coreutils dunst findutils gawk gojq ImageMagick light NetworkManager network-manager-applet pavucontrol plasma-browser-integration playerctl procps ripgrep socat udev upower util-linux wget wireplumber wlogout qalc sox nlohmann-json-devel
```
- AUR Packages
```
cava geticons gtklock gtklock-playerctl-module gtklock-powerbar-module gtklock-userinfo-module python-material-color-utilities swww gojq wlogout hyprland-git eww-wayland-git
```
 - Stuff that you might wanna install if you didn't start as a lazyass on EndeavourOS+Gnome like me (install these if you decide to use my hyprland.conf)
```
gnome-keyring polkit-gnome 
```

 - Other stuff that I use, mostly utilities (you can skip these)
```
tesseract cliphist grim slurp fuzzel
```
