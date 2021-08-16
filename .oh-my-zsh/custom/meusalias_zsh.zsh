# ----------------------------------------------------------------
# 
#     ____    _    _____  __    _    ____  ____  _____ _____  _    
#    / ___|  / \  |_ _\ \/ /   / \  |  _ \|  _ \| ____|_   _|/ \   
#   | |     / _ \  | | \  /   / _ \ | |_) | |_) |  _|   | | / _ \  
#   | |___ / ___ \ | | /  \  / ___ \|  __/|  _ <| |___  | |/ ___ \ 
#    \____/_/   \_\___/_/\_\/_/   \_\_|   |_| \_\_____| |_/_/   \_\
# 
# Conf ZSH
# ------------------------------------------------------------------

 
#
# ----- Edição arquivos base ---------------------------------------

alias edita_rc='nvim ~/.config/ranger/rc.conf'
alias edita_scope='nvim ~/.config/ranger/scope.sh'
alias edita_zhsrc='nvim ~/.zshrc'
alias edita_nvim='nvim ~/.config/nvim/init.vim'
alias edita_aliasZSH='nvim ~/.oh-my-zsh/custom/meusalias_zsh.zsh'
alias edita_aliasBASH='nvim ~/.oh-my-bash/custom/aliases/meusalias_bash.sh'
alias edita_tmux='nvim ~/.tmux.conf'
alias edita_bashrc='nvim ~/.bashrc
'
alias sourcremP='source ~/.profile'
alias sourcremZ='source ~/.zshrc'
alias sourcremB='source ~/.bashrc'
alias sourcremV='source ~/.config/nvim/init.vim'
alias sourcremT='source ~/.tmux.conf'


# ----- Gestão de Diretorios - Criar - Mover - Ir para ---------------
# ----------- Criar Diretorios conctenados e ir para o ultimo diretorio criado -

function criardiretorio () { mkdir -p "$@" && eval cd "\"\$$#\""; }


# ------ Copiar e ou mover files e seguir para o diretorio escolhido ----------

box() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
copVai() { cp "$@" && box "$_"; }
mvVai() { mv "$@" && box "$_"; }

# ------ Copia e muda o nome do alias.zsh para alias.sh

alias cp_zsh_para_sh='cp .oh-my-zsh/custom/meusalias_zsh.zsh ~/.oh-my-bash/custom/aliases/meusalias_bash.sh'
alias cp_sh_para_zsh='cp .oh-my-bash/custom/aliases/meualias_bash.sh ~/.on-my-zsh/custom/meusalias_zsh.zsh'

# ------- Atualização do Sistema -----------------------------------------------

alias atualizar='~/.atualiza.sh'

# ------- Navegação de Diretorios - cd -----------------------------------------

alias vai_dev-raiz='cd /media/maej/Novo_1TB/Devs'
alias vai_DevGit='cd /media/maej/Novo_1TB/Devs/Projetos_Git'
alias vai_devGrafico='cd /media/maej/Novo_1TB/Devs/Projetos_Graficos'
alias vai_meublog='cd /media/maej/Novo_1TB/Devs/Projetos_Git/MeuBlog'
alias vai_cursos='cd /media/maej/Novo_1TB/CURSOS'
alias vai_graf='cd /media/maej/Novo_1TB/Recursos_Graficos'
alias vai_novo='cd /media/maej/Novo_1TB/CPTI/NovoAmanhecer'
alias vai_scripts='cd /media/maej/Novo_1TB/Scripts'
alias vai_tomenota='cd /media/maej/Novo_1TB/Notes/Notas_Terminal_Velocity'
alias vai_baixeiaqui='cd /media/maej/Novo_1TB/BAIXEI_AQUI'

# -------- Apps Modo Cli - Gestão e Confgs -------------------------------------

alias y='yokadi --datadir /media/maej/Novo_1TB/Notes/Yokadi/'
alias horacerta='tty-clock -c -C 7 -r -f "%A, %B %d"'
alias terminator='terminator -l Orbita'
alias tomenota='terminal_velocity'

# -------- Apps Instalados no /opt ---------------------------------------------

alias telegram='cd /opt/Telegram ; ./Telegram'


# -------- GAMES ---------------------------------------------------------------

alias wakfu='cd /media/maej/Novo_1TB/BAIXEI_AQUI ; ./Ankama\ Launcher-Setup-x86_64.AppImage'	

