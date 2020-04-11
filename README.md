# Another .vimrc Configuration

## Plugin Requirements

* [neovim](https://neovim.io/) (Preferred) or Vim 8+
* Latest stable version of [Node.js](https://nodejs.org) for [CoC plugin](https://github.com/neoclide/coc.nvim)
* Installation of [rg](https://github.com/BurntSushi/ripgrep) (ripgrep) or some other search utility for the CtrlSF plugin

## Installation

This repo includes a shell script for doing some folder organization, specifically for [neovim](https://neovim.io/) and some various configuration things, if you don't want all of that just ignore the rest of the steps and copy whatever looks interesting.

**Note**

The installation script is target towards the bash shell, so if on Windows you will need to have an appropriate environment such as [Cygwin](https://www.cygwin.com) or [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about)

First clone the repo

```bash
$ git clone https://github.com/daneg89/vimrc.git
```

Then run the `install` script

```bash
$ cd vimrc
$ ./install
```

The script will prompt you if it tries to overwrite an existing file, so provide a `y` or `n` as needed.

Afterwards open up `nvim` and press `enter` after errors pop up about missing such or other.

Run the `:PlugInstall` command and wait for all the plugins to install. Afterwards exit and open up nvim again. If no errors show then you should be good to go!
