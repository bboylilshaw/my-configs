# 配置oh-my-zsh
macOS安装配置oh-my-zsh步骤

## 1. 安装homebrew

[homebrew](url:'https://brew.sh/')

install
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

## 2. 安装zsh

```bash
brew install zsh
```

## 3. 安装oh-my-zsh

via curl
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

via wget
```bash
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

github -> https://github.com/ohmyzsh/ohmyzsh

## 4. 安装常用 plugin 和 theme

#### 安装`zsh-autosuggestions`
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

#### 安装`zsh-syntax-highlighting`
```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### 安装`zsh-history-substring-search`
```bash
 git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
```

#### 安装p10k

## 5. 设置.zshrc配置文件
用repo里的.zshrc替换home目录的.zshrc