# elementaryRecolor
## Colorschemes at their finest!

### Background

I've noticed that elementaryOS theming was quite...lacking. And whilst that isn't a bad thing in of itself, *it is intentional after all*, though I still decided to make this to aid anyone in getting their Pantheon desktops up and running with their favourite colors

### Usage

To use this, you'll need to clone the repo **recursively**. This means instead of the usual download button, or `git clone`, you'll need to use `git clone --recursive` instead:
```bash
git clone --recursive https://github.com/TGRush/elementaryRecolor.git
```

Once you've done that, enter the folder and run `recolor.sh`:
```bash
./recolor.sh <options>

# For example:
./recolor.sh catppuccin
# or
./recolor.sh --help # To see all options
```

### Currently supported colorschemes:

- Catppuccin Mocha
- Catppuccin Latte (somewhat broken)
- Custom <span style="font-size:12px;color:grey;">(provide custom palette.scss)</span>

