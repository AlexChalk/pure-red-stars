# Pure-Red-Stars

An unholy merging of [Fishy](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/fishy.zsh-theme), [Purity](https://github.com/therealklanni/purity), and [CJT](https://github.com/christoomey/dotfiles/blob/77fb4084bd3f207aace80aa93a49769a6a298ddb/zsh/cjt.zsh-theme). A shell theme for [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).

![screenshot-of-prompt](http://i.imgur.com/CgEfHVy.png)

## Installation

The following assumes a working installation of Z Shell and either oh-my-zsh or zplug:

1. For oh-my-zsh:
   * Copy `pure-red-stars.zsh-theme` into the `~/.oh-my-zsh/custom` directory.
   * Add the following to your `.zshrc`: `ZSH_THEME="pure-red-stars"`.
   * Restart your shell.

2. For zplug:
   * Add `pure-red-stars` to your zplug plugins list:

     ```
     source ~/.zplug/init.zsh
     ...other plugins....
     zplug "adc17/pure-red-stars", as:theme
     zplug load
     ```
   * Source the [oh-my-zsh git script](https://github.com/robbyrussell/oh-my-zsh/blob/e273cf004e1ff0510aee61416885f3003bcd15d9/lib/git.zsh) in your zshrc (`source ~/path/to/omz-git-script.zsh`). It's important that you place this *after* your zplug code.
   * Restart your shell and run `zplug install`.
   * If you don't see the theme, restart your shell again.

## Features

* Fish-like display of the current working directory.
* Purity-like color scheme and unicode symbols.
* Chris Toomey's git info configuration: red notification when dirty, short commit hash, and `HEAD` notification when in detached head state.

Please note that, unlike Purity, this theme doesn't include checks for unpulled/unpushed commits or an application runtime timer.

## License

MIT © Alexander Chalk
