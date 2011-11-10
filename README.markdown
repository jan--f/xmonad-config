# xmonad-config
xmonad-config is the [xmonad](http://xmonad.org/) configuration used by me. It
is based on the config of [Vic Fryzel](http://github.com/vicfryzel/xmonad-config), copied without shame and modified to my liking.


![Screenshot of xmonad-config](/jangingnicht/xmonad-config/raw/master/screenshot.png)

## Requirements

* xmonad 0.9.1 or 0.9.2
* xmonad-contrib 0.9.1 or 0.9.2
* [xmobar 0.11.1 or 0.13](http://projects.haskell.org/xmobar/)
* [trayer 1.0](http://fbpanel.sourceforge.net/)
* [dmenu 4.0](http://tools.suckless.org/dmenu/)
* [scrot 0.8](http://freshmeat.net/projects/scrot/)

### Installing requirements on [Arch Linux](http://www.archlinux.org/)

    sudo pacman -S xmonad xmonad-contrib xmobar trayer dmenu scrot

## Installation

Installing xmonad-config is a matter of backing up any xmonad configuration
you may already have, cloning the git repository, and updating your PATH.

    cd
    mv .xmonad .xmonad.orig
    git clone https://github.com/vicfryzel/xmonad-config.git .xmonad
    echo "export PATH=\$PATH:~/.cabal/bin:~/.xmonad/bin" >> ~/.bashrc
    source ~/.bashrc

## Keyboard shortcuts

After starting xmonad, use the following keyboard shortcuts to function in
your new window manager.  I recommend you print these out so that you don't
get stranded once you logout and back in.

* WINDOWS+Shift+Return: Start a terminal
* WINDOWS+Ctrl+l: Lock screen
* WINDOWS+p: Start dmenu.  Once it comes up, type the name of a program and enter
* WINDOWS+Shift+p: Take screenshot in select mode. Click or click and drag to select
* WINDOWS+Ctrl+Shift+p: Take fullscreen screenshot. Supports multiple monitors
* WINDOWS+Shift+c: Close focused window
* WINDOWS+Space: Change workspace layout
* WINDOWS+Shift+Space: Change back to default workspace layout
* WINDOWS+n: Resize viewed windows to the correct size
* WINDOWS+Tab: Focus next window
* WINDOWS+j: Focus next window
* WINDOWS+k: Focus previous window
* WINDOWS+m: Focus master window
* WINDOWS+Return: Swap focused window with master window
* WINDOWS+Shift+j: Swap focused window with next window
* WINDOWS+Shift+k: Swap focused window with previous window
* WINDOWS+h: Shrink master window area
* WINDOWS+l: Expand master window area
* WINDOWS+t: Push floating window back into tiling
* WINDOWS+,: Increment number of windows in master window area
* WINDOWS+.: Decrement number of windows in master window area
* WINDOWS+q: Restart xmonad. This reloads xmonad configuration, does not logout
* WINDOWS+Shift+q: Quit xmonad and logout
* WINDOWS+[1-9]: Switch to workspace 1-9, depending on which number was pressed
* WINDOWS+Shift+[1-9]: Send focused window to workspace 1-9
* WINDOWS+w: Focus left-most monitor (Xinerama screen 1)
* WINDOWS+e: Focus center-most monitor (Xinerama screen 2)
* WINDOWS+r: Focus right-most monitor (Xinerama screen 3)
* WINDOWS+Shift+w: Send focused window to workspace on left-most monitor
* WINDOWS+Shift+e: Send focused window to workspace on center-most monitor
* WINDOWS+Shift+r: Send focused window to workspace on right-most monitor
* WINDOWS+Left Mouse Drag: Drag focused window out of tiling
* WINDOWS+Right Mouse Drag: Resize focused window, bring out of tiling if needed


## Personalizing or modifying xmonad-config

Once cloned, xmonad-config is laid out as follows.

All xmonad configuration is in ~/.xmonad/xmonad.hs.  This includes
things like key bindings, colors, layouts, etc.  You may need to have some
basic understanding of [Haskell](http://www.haskell.org/haskellwiki/Haskell)
in order to modify this file, but most people have no problems.

Most of the xmobar configuration is in ~/.xmonad/xmobar.hs.

All scripts are in ~/.xmonad/bin/.  Scripts are provided to do things like
take screenshots, start the system tray or fix your multi-head
layout after a fullscreen application may have turned off one of the screens. 
