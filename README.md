# Customize Zsh Terminal ⌨️ 🇰🇭

![Terminal](https://user-images.githubusercontent.com/32268364/115517214-1c248a80-a2b1-11eb-9092-f1757a6037ff.gif)


## ការដំណើរ `zsh terminal` ជំនួយការប្រើប្រាស់លើ `ubuntu`
```
sudo apt install zsh git
```
ខ្ញុំសូមធ្វើការទាញយកកូដតាម `github` ។​ ប្រសិនប្រើកុំព្យូទ័ររបស់អ្នកមិនទាន់ដំឡើង `git` ត្រូវប្រើ៖

```
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
```

រួចចម្លង Folder ពី `oh-my-zsh` តាមរយៈ `terminal` 

```
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
cp ~/.zshrc ~/.zshrc.orgi
```

បន្ទាប់មកទាញយកកូដបន្តទៀត វាជា plugin សម្រាប់ជំនួយក្នុងការប្រើប្រាស់ `Terminal` ដូចជា `zsh-autosuggestions` `zsh-syntax-highlighting` ដែលពេញនិយមក្នុងការប្រើប្រាស់៖ 
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```

បន្ទាប់មកយើងត្រូវការទៅកែឯកសារ `zshrc` តាមរយៈ `nano` ឬកម្មវិធីដែលអ្នកចូលចិត្តប្រើ

```
nano ~/.zshrc
```
រក​ពាក្យ `plugin` រួចថែម `plugin` ចូលក្នុងសញ្ញាវង់ក្រចក
```
plugins = ( git zsh-syntax-highlighting zsh-autosuggestions )
```

នៅក្នុងឯកសារ `zshrc​` ដូចគ្នាដែរ យើងអាចប្រើប្រាស់ terminal theme ដែលបងប្អូនចូលចិត្តប្រើគឺមើលក្នុងពាក្យ `ZSH_THEME` ៖ 

```
ZSH_THEME="gnzh" 
```
ខាងក្រោមនេះជាឈ្មោះ THEME ដែលខ្ញុំចូលចិត្តប្រើ៖
- rkj
- miloshadzic
- gnzh
- sonicradish
- gozilla

![Nano](https://user-images.githubusercontent.com/32268364/115516781-a7e9e700-a2b0-11eb-92c2-70da67476369.gif)

ចុងក្រោយដើម្បីរួចរាល់យើងត្រូវប្រើ `command line` ដើម្បីដំណើរការ `zsh terminal` ៖ 
```
chsh -s /usr/bin/zsh
source ~/.zshrc
```

## Switch to Bash Terminal 
ក្នុងករណីអ្នក ចង់ត្រឡប់ប្រើប្រាស់ `bash terminal` ដែលជា default terminal របស់ `ubuntu` អ្នកគ្រាន់តែចូលប្រើវាយ `command line`៖ 
```
chsh -s /bin/bash
```

អ្នកអាចស្វែងយល់បន្តែមពីប្រភពរបស់ `oh-my-zsh` terminal៖
- [Oh-my-zsh Terminal](https://github.com/ohmyzsh/ohmyzsh
)
- [Read Dev.to](https://dev.to/mskian/install-z-shell-oh-my-zsh-on-ubuntu-1804-lts-4cm4)


សូមអរគុណ! From handsome writer ❤️😆 [Samreach](https://fb.com/yan.samreach)
