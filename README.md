# Pure-Red-Stars

An unholy merging of [Fishy](https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/fishy.zsh-theme), [Purity](https://github.com/therealklanni/purity), and [CJT](https://github.com/christoomey/dotfiles/blob/77fb4084bd3f207aace80aa93a49769a6a298ddb/zsh/cjt.zsh-theme).

![screenshot-of-prompt](http://i.imgur.com/CgEfHVy.png)

## Installation

1. For oh-my-zsh:
   * Copy `pure-red-stars.zsh-theme` into the `~/.oh-my-zsh/custom` directory.
   * Add the following to your `.zshrc`: `ZSH_THEME="pure-red-stars"`.
   * Restart your shell.

2. For zplug:
   * Add `pure-red-stars` to your zplug plugins list:

     ```
     source ~/.zplug/init.zsh
     ...other plugins....
     zplug "AlexChalk/pure-red-stars", as:theme
     zplug load
     ```
   * Restart your shell and run `zplug install`.
   * If you don't see the theme, restart your shell again.

3. For antibody:
   * Add `setopt prompt_subst` to your zshrc.
   * Follow the usual antibody plugin install process.

4. For zplugin:
   * Add `setopt prompt_subst` to your zshrc.
   * Source like this: `zplugin light AlexChalk/pure-red-stars`.

## Features

* Fish-like display of the current working directory.
* Purity-like color scheme and unicode symbols.
* Chris Toomey's git info configuration: red notification when dirty, short commit hash, and `HEAD` notification when in detached head state.

Please note that, unlike Purity, this theme doesn't include checks for unpulled/unpushed commits or an application runtime timer.

## License

MIT © Alexander Chalk
