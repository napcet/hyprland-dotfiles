# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/.npm-global/bin"

# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh


# Pasta para npm-global
export PATH="$HOME/.npm-global/bin:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="nahuel"
# ZSH_THEME="avit"
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# Case-insensitive completion (sensibilidade a maiúsculas/minúsculas)
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# Hyphen-insensitive completion (completions ignoram hífens)
HYPHEN_INSENSITIVE="true"

# Auto-complete instantâneo (correção de case)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Melhorias no comportamento de tabulação
zstyle ':completion:*' menu select

# Carregar e inicializar o sistema de autocompletar
autoload -Uz compinit
compinit

# Python Virtual environments
PYTHON_VENV_NAME=".venv"
PYTHON_VENV_NAMES=($PYTHON_VENV_NAME venv)
PYTHON_AUTO_VRUN=true

# Configuração spaceship-prompt.sh
SPACESHIP_VENV_SHOW=true
# SPACESHIP_VENV_SYMBOL="🐍 "
SPACESHIP_VENV_SYMBOL=""
SPACESHIP_VENV_COLOR="blue"
# SPACESHIP_VENV_GENERIC_NAMES=(virtualenv venv .venv)
SPACESHIP_VENV_GENERIC_NAMES=()
SPACESHIP_VENV_PREFIX=""

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# =======================================
# SSH Agent Setup para Zsh

# Configura para adicionar chaves automaticamente
zstyle :omz:plugins:ssh-agent identities ~/.ssh/id_nap

# Adiciona as chaves sem exibir mensagens no terminal
zstyle :omz:plugins:ssh-agent quiet yes

# Permitir que o ssh-agent carregue a chave sem solicitar a senha (se aplicável)
zstyle :omz:plugins:ssh-agent lifetime 4h

# ========================
# Configuração de Plugins
# ========================
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  ssh-agent
  zsh-interactive-cd
  vscode
  archlinux
  colored-man-pages
  colorize
  docker
  docker-compose
  python
)

# Carregar funções personalizadas
for file in ~/.zsh/functions/*.zsh; do
  source "$file"
done

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
export LANG=pt_BR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.

# ========================
# Configurações
# ========================
# Para não sobrescrever arquivos
setopt noclobber

# ========================
# Aliases Personalizados
# ========================
alias zshconf="kate ~/.zshrc"
alias ohmyzsh="kate ~/.oh-my-zsh"
alias google='ping -t 3 www.google.com.br'
alias autoremove='sudo pacman -Rns $(pacman -Qdtq)'
alias auth='chmod -R u+w .'
alias dock='sudo systemctl start docker'
alias dockstop='sudo systemctl stop docker'
# alias videoCam='scp truenas_admin@192.168.7.9:"/mnt/.ix-apps/app_mounts/frigate/media/frigate/exports/*.mp4" ~/Downloads/'
alias videoCam='rsync --remove-source-files -avz truenas_admin@192.168.7.9:/mnt/.ix-apps/app_mounts/frigate/media/frigate/exports/\*.mp4 ~/Downloads/'

alias usbPC="rsync -av --info=progress2 --delete --stats --checksum --no-perms --exclude 'Dev/goDataBase/mysql_data/' /run/media/$USER/16gb/nahuel/{Dev,Documentos,Downloads,Fornecedores,Site,Produtos,Zomboid} ~/"

alias pcUsb="rsync -av --info=progress2 --delete --stats --checksum --no-perms --exclude 'Dev/goDataBase/mysql_data/' ~/{Dev,Documentos,Downloads,Fornecedores,Site,Produtos,Zomboid} /run/media/$USER/16gb/nahuel"

# alias spcHost='scp -P 65002 u755580152@147.79.94.37:'
alias spcHost='scp -P 65002 u755580152@147.79.94.37:/home/u755580152/domains/netdive.com.br/public_html/wp-content/wpvividbackups/'

# Alias para Hostinger (SSH)
# alias hostinger='ssh -i ~/.ssh/hostinger -p 65002 u755580152@147.79.94.37'
alias hostinger='ssh -p 65002 u755580152@147.79.94.37'

alias clasp_enviar='read "?Tem certeza que deseja enviar para a nuvem? (s/n) " && [[ $REPLY == [sS] ]] && clasp push'
alias clasp_baixar='read "?Tem certeza que deseja baixar da nuvem? (s/n) " && [[ $REPLY == [sS] ]] && clasp pull'

# ========================
# Unaliases Personalizados
# ========================
unalias gup
unalias gupa
unalias gupav
unalias gupom
unalias gupomi
unalias gupv
