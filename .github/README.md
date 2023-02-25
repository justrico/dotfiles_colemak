## Prerequisites

- [Zap](https://github.com/zap-zsh/zap) - a minimal zsh plugin manager


## How to use

### Starting with git bare repo

```bash
git init --bare $HOME/dotfiles
```
This creates a folder `~/dotfiles` which is a git bare repository that will track files.

```bash
alias dot='/usr/bin/git --git-dit=$HOME/dotfiles/ --work-tree=$HOME'
```
Then we create an alias `dot` command which we will use instead of the regular `git` when we want to interact with our configuration repository.

```bash
dot config --local status.showUntrackedFiles no
```

We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type `dot status` and other commands later, files you are not interested in tracking will not show up as untracked.

### Managing dotfiles

```bash
dot status
dot add .bashrc .zshrc
dot commit -m "add bashrc zshrc"

dot remote add github git@github.com:justrico/dotfiles.git
dot branch -M main
dot push github main
```

### Install dotfiles onto a new system

```bash
git clone --bare $HOME/dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
```

Add your source repository to `~/.gitignore` file, so that you don't create weird recursion problems when clone it.
```bash
echo "dotfiles" >> .gitignore
```

Checkout the actual content from the bare repository to your `$HOME`:
```bash
dot checkout
```

The step above might fail with a message like:
```bash
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches.
Aborting
```

This is because your $HOME folder might already have some stock configuration files which would be overwritten by Git. The solution is simple: back up the files if you care about them, remove them if you don't care.

After solves problems, re-run the checkout: `dot checkout`.

Also set the flag `showUntrackedFiles` to `no` on this specific repository:
```bash
config config --local status.showUntrackedFiles no
```

From now you can now type `dot` commands to add and update dotfiles.
