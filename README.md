# I have moved to Codeberg!
## Check out this repository on the following link: https://codeberg.org/TGRush/elementaryRecolor

Old Readme:

<details>
# elementaryRecolor
## Colorschemes at their finest!
##### Made with :heart: by TGRush


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
	- Simply switch to Light Mode in settings with Catppuccin applied
- Pure Black (Catppuccin accents)
- Custom <span style="font-size:12px;color:grey;">(provide custom palette.scss)</span>

### Add your own colorschemes:

Check [this](https://hackmd.io/@TGRush/elementaryRecolor-Custom-Color-Schemes) HackMD note I wrote to explain how exactly you can make a Color Scheme.

### Reverting

The script backs up your entire `/usr/share/themes` folder to `~/.themeBackup`. Therefore, you can revert to the original themes by copying the content of that back to `/usr/share/themes/`

## License

```
Copyright (c) 2022 Simon "TGRush" Müller

This software is provided 'as-is', without any express or implied warranty. 
In no event will the authors be held liable for any damages arising from the
use of this software.

Permission is granted to anyone to use this software for any purpose, 
including commercial applications, and to alter it and redistribute it freely, 
subject to the following restrictions:

  1. The origin of this software must not be misrepresented; 
  you must not claim that you wrote the original software. 
  If you use this software in a product, an acknowledgment 
  in the product documentation would be appreciated but is not required.

  2. Altered source versions must be plainly marked as such, 
  and must not be misrepresented as being the original software.

  3. This notice may not be removed or altered from any source distribution.
```
</details>
