## 用 git bare 管理 dotfiles

### 1 创建 bare repo

```bash
git init --bare $HOME/dotfiles
```
创建 `~/dotfiles` 目录，这个文件夹相当于普通 git 项目中的 `.git` 文件夹。

```bash
alias dot='/usr/bin/git --git-dit=$HOME/dotfiles/ --work-tree=$HOME'
```
创建一个 alias 命令，方便以后进行管理，后面对配置文件进行 git 管理时用到的都是这个命令，而不是普通的 git 命令。

**推荐把这条命令添加进 `.bashrc` 或 `.zshrc` 文件以持久生效。**

```bash
dot config --local status.showUntrackedFiles no
```
由于配置文件都是手动指定文件，这条命令可以使得查看仓库状态的时候不会因为其他文件没有添加或提交而显示不必要的状态信息。

### 2 管理 dotfiles

```bash
# 查看仓库状态
dot status

# 添加配置文件/文件夹
dot add .bashrc .zshrc

# 提交
dot commit -m "add bashrc zshrc"

# 推送
dot remote add github git@github.com:justrico/dotfiles.git
dot branch -M main
dot push github main
```

为了防止以后拉取时导致递归拉取，需要将 bare repo 加入 `.gitignore` 文件：
```gitignore
dotfiles
# neovim 单独管理的可以将 nvim 也添加进来
nvim
```

### 3 在新环境中恢复配置

```bash
git clone --bare $HOME/dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
dot checkout
```
最后一步做完可能会报错，就像这样：
```error
error: The following untracked working tree files would be overwritten by checkout:
    .bashrc
    .gitignore
Please move or remove them before you can switch branches. Aborting
```
这是因为目录已经有这些文件，产生了冲突。如果不需要已有的文件，删除即可；如果需要可以备份一下。
然后重新 `dot checkout`

同样还需要关闭显示没有追踪的文件：
```bash
dot config --local status.showUntrackedFiles no
```
至此就可以像之前一样管理配置文件了。
