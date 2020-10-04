# Prerequisites

**sudo** is required to setup yay.

There is a script in this Repo that install yay and give it the right user permissions in the /opt dir.


# To install yay

```bash
sudo ./yay.sh
```

# To install my default packages

```bash
yay -S $(cat package.lst)
```

# To start i3 after login in tty1

copy the xinitrc from the /etc/X11/xinit/xinitrc to ~/.xinitrc
and add **exec i3** before the **twm &**

add followig lines to ~/.profile to start the i3 session after login in tty1

```
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
```

# Clone .config dir from github

to use my current config:

 ```
git clone https://github.com/matthiasantierens/dotfiles.git
cd dotfiles
cp -r config ~/.config
```
