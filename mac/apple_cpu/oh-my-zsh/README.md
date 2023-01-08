## oh-my-zsh 设置

macOS设置oh-my-zsh步骤

## 安装

1. 安装homebrew
确保已经安装homebrew，如未安装，请参考homebrew部分

2. 安装zsh
```bash
brew install zsh
```

3. 安装oh-my-zsh
安装脚步参考oh-my-zsh官网：https://ohmyz.sh/#install
github repo：https://github.com/ohmyzsh/ohmyzsh

via curl
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

via wget
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```


### 配置oh-my-zsh

#### 基本配置
1. 将默认的 `.zshrc` 重命名为 `.zshrc.bak`
```bash
mv ~/.zshrc ~/.zshrc.bak
```
2. 将repo里的 `.zshrc` copy到home目录
```bash
cp /REPO/PATH/TO/.zshrc ~/.zshrc
```
3. 将repo里的 `.config.generic.zsh` 和 `.config.mac.zsh` copy到home目录
```bash
cp /REPO/PATH/TO/.config.generic.zsh ~/.config.generic.zsh
cp /REPO/PATH/TO/.config.mac.zsh ~/.config.mac.zsh
```


#### 配置plugin
安装`zsh-autosuggestions`
```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

安装`zsh-syntax-highlighting`
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

安装`zsh-history-substring-search`
```
 git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

#### 配置theme

使用theme：powerlevel10k
github：https://github.com/romkatv/powerlevel10k

1. 安装theme：
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Users in China can use the official mirror on gitee.com for faster download.
中国用户可以使用 gitee.com 上的官方镜像加速下载.

```bash
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

2. 配置
将repo里的 `.p10k.zsh` copy到home目录
```bash
cp /REPO/PATH/TO/.p10k.zsh ~/.p10k.zsh
```