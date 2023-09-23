__conda_setup="$('/Users/inogii/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/inogii/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/inogii/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/inogii/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_ANACONDA_FOREGROUND="black"
POWERLEVEL9K_ANACONDA_BACKGROUND="green"
POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_BACKGROUND="green"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="green"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="green"
POWERLEVEL9K_TIME_BACKGROUND="red"
POWERLEVEL9K_TIME_FOREGROUND="white"
POWERLEVEL9K_USER_DEFAULT_BACKGROUND="red"
POWERLEVEL9K_USER_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user status anaconda dir)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=( )
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
local user_symbol=">"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{white}%K{red}%} $user_symbol%{%b%f%k%F{red}%} %{%f%}"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

source /opt/homebrew/Cellar/zsh-syntax-highlighting/0.7.1/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
conda activate default
fortune | cowsay -f tux