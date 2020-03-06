if [[ ! -d ~/.zplug ]] ; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update
fi

source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug 'zsh-users/zsh-syntax-highlighting'

zplug 'mafredri/zsh-async', from:github
zplug 'romkatv/powerlevel10k', from:github, as:theme

zplug 'jreese/zsh-titles', from:github

if ! zplug check --verbose ; then
    printf "Install zplug plugins? [y/N]: "
    if read -q ; then
        echo ; zplug install
    fi
fi

zplug load
