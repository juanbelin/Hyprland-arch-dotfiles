# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Created by newuser for 5.9
source /home/belin/powerlevel10k/powerlevel10k.zsh-theme

# ZSH AutoSuggestions Plugin
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi 


# ZSH Syntax Highlighting
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ZSH Autocomplete
#if [ -f /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]; then
#    source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
#fi

# ZSH Sudo Plugin

if [ -f /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh ]; then
    source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh
fi

#ZSH History Search Plugin
if [ -f /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh ]; then
	source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
fi

# Custom Aliases
# -----------------------------------------------
# bat
alias cat='bat'
alias catn='bat --style=plain'
alias catnp='bat --style=plain --paging=never'

alias icat="kitten icat"

# ls
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'

# History 
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt histignorealldups sharehistory


     
# Use modern completion system
autoload -Uz compinit
compinit
 
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
 
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export LS_COLORS="rs=0:di=34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:"

export PATH=/opt/kitty/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/usr/sbin/:/home/parrot/.config/polybar-pulseaudio-control-3.1.1/pulseaudio-control.bash/:/opt/nvim/:/usr/bin/whichSystem:~/.local/bin:/

# Custom functions
#------------------------- 
# Set victim target

function settarget(){
    ip_address=$1
    machine_name=$2
    echo "$ip_address $machine_name" > /home/parrot/.config/bin/target
}



# Función para borrar el historial de Zsh
    clear_history() {
    echo '' > ~/.zsh_history
    echo '' > /root/.zsh_history
    echo "Historial de comandos borrado."
    source ~/.zsh_history
    source /root/.zsh_history
    }


# Extract nmap information
function extractPorts(){
    ports="$(cat $1 | grep -oP '\d{1,5}/open' | awk '{print $1}' FS='/' | xargs | tr ' ' ',')"
    ip_address="$(cat $1 | grep -oP '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}' | sort -u | head -n 1)"
    echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
    echo -e "\t[*] IP Address: $ip_address"  >> extractPorts.tmp
    echo -e "\t[*] Open ports: $ports\n"  >> extractPorts.tmp
    echo $ports | tr -d '\n' | xclip -sel clip
    echo -e "[*] Ports copied to clipboard\n"  >> extractPorts.tmp
    cat extractPorts.tmp; rm extractPorts.tmp

}

function cleanDocker(){
	docker rm $(docker ps -a -q) --force 2> /dev/null
	dokcer rmi $(docker images -q) 2> /dev/null
	docker network rm $(docker network ls -q) 2> /dev/null
	docker volume rm $(docker volume ls -q) 2> /dev/null
}

function rmk(){
    scrub -p dod $1
    shred -zun 10 -v $1
}

function mkt (){
	mkdir {nmap,content,exploits}
}

function cleartarget(){
    echo '' > /home/parrot/.config/bin/target
}



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f ~/fzf/key-bindings.zsh ] && source ~/fzf/key-bindings.zsh
[ -f ~/fzf/completion.zsh ] && source ~/fzf/completion.zsh


export XDG_SESSION_TYPE=wayland
export XDG_RUNTIME_DIR=/run/user/$(id -u)


bindkey "^[[1;3A" history-beginning-search-backward
bindkey "^A" beginning-of-line
bindkey "^[A" accept-and-hold
bindkey "^[OA" history-substring-search-up
bindkey "^[^[[A" history-substring-search-up
bindkey "^[^[OA" history-substring-search-up
bindkey "^[[A" history-substring-search-up 
bindkey "^B" backward-char
bindkey "^X^B" vi-match-bracket
bindkey "^[B" backward-word
bindkey "^[OB" menu-select
bindkey "^[[B" history-substring-search-down
bindkey "^[^[OB" history-substring-search-down
bindkey "^[^[[B" history-substring-search-down
bindkey "^@" set-mark-command
bindkey "^A" beginning-of-line
bindkey "^B" backward-char
bindkey "^D" delete-char-or-list
bindkey "^E" end-of-line
bindkey "^F" forward-char
bindkey "^G" send-break
bindkey "^H" backward-delete-char
bindkey "^I" menu-complete
bindkey "^J" accept-line
bindkey "^K" kill-line
bindkey "^L" clear-screen
bindkey "^M" accept-line
bindkey "^N" down-line-or-history
bindkey "^O" accept-line-and-down-history
bindkey "^P" up-line-or-history
bindkey "^Q" push-line
bindkey "^R" fzf-history-widget
bindkey "^S" history-incremental-search-forward
bindkey "^T" fzf-file-widget
bindkey "^U" backward-kill-line
bindkey "^V" quoted-insert
bindkey "^W" backward-kill-word
bindkey "^X^B" vi-match-bracket
bindkey "^X^E" edit-command-line
bindkey "^X^F" vi-find-next-char
bindkey "^X^J" vi-join
bindkey "^X^K" kill-buffer
bindkey "^X^N" infer-next-history
bindkey "^X^O" overwrite-mode
bindkey "^X^R" _read_comp
bindkey "^X^U" undo
bindkey "^X^V" vi-cmd-mode
bindkey "^X^X" exchange-point-and-mark
bindkey "^X*" expand-word
bindkey "^X=" what-cursor-position
bindkey "^X?" _complete_debug
bindkey "^XC" _correct_filename
bindkey "^XG" list-expand
bindkey "^Xa" _expand_alias
bindkey "^Xc" _correct_word
bindkey "^Xd" _list_expansions
bindkey "^Xe" _expand_word
bindkey "^Xg" list-expand
bindkey "^Xh" _complete_help
bindkey "^Xm" _most_recent_file
bindkey "^Xn" _next_tags
bindkey "^Xr" history-incremental-search-backward
bindkey "^Xs" history-incremental-search-forward
bindkey "^Xt" _complete_tag
bindkey "^Xu" undo
bindkey "^X~" _bash_list-choices
bindkey "^Y" yank
bindkey "^[^D" list-choices
bindkey "^[^G" send-break
bindkey "^[^H" backward-kill-word
bindkey "^[^I" self-insert-unmeta
bindkey "^[^J" self-insert-unmeta
bindkey "^[^L" clear-screen
bindkey "^[^M" self-insert-unmeta
bindkey "^[^[" sudo-command-line
bindkey "^[^_" copy-prev-word
bindkey "^[ " expand-history
bindkey "^[!" expand-history
bindkey "^[\"" quote-region
bindkey "^[\$" spell-word
bindkey "^['" quote-line
bindkey "^[," _history-complete-newer
bindkey "^[-" neg-argument
bindkey "^[." insert-last-word
bindkey "^[/" _history-complete-older
bindkey "^[0" digit-argument
bindkey "^[1" digit-argument
bindkey "^[2" digit-argument
bindkey "^[3" digit-argument
bindkey "^[4" digit-argument
bindkey "^[5" digit-argument
bindkey "^[6" digit-argument
bindkey "^[7" digit-argument
bindkey "^[8" digit-argument
bindkey "^[9" digit-argument
bindkey "^[<" beginning-of-buffer-or-history
bindkey "^[>" end-of-buffer-or-history
bindkey "^[?" which-command
bindkey "^[A" accept-and-hold
bindkey "^[B" backward-word
bindkey "^[C" capitalize-word
bindkey "^[D" kill-word
bindkey "^[F" forward-word
bindkey "^[G" get-line
bindkey "^[H" run-help
bindkey "^[L" down-case-word
bindkey "^[N" history-search-forward
bindkey "^[OA" history-substring-search-up
bindkey "^[OB" history-substring-search-down
bindkey "^[OC" forward-char
bindkey "^[OD" backward-char
bindkey "^[OF" end-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[P" history-search-backward
bindkey "^[Q" push-line
bindkey "^[S" spell-word
bindkey "^[T" transpose-words
bindkey "^[U" up-case-word
bindkey "^[W" copy-region-as-kill
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[200~" bracketed-paste
bindkey "^[[2~" overwrite-mode
bindkey "^[[3;5~" kill-word
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down
bindkey "^[[C" forward-char
bindkey "^[[D" backward-char
bindkey "^[[F" end-of-line
bindkey "^[[H" beginning-of-line
bindkey "^[[Z" reverse-menu-complete
bindkey "^[_" insert-last-word
bindkey "^[a" accept-and-hold
bindkey "^[b" backward-word
bindkey "^[c" fzf-cd-widget
bindkey "^[d" kill-word
bindkey "^[f" forward-word
bindkey "^[g" get-line
bindkey "^[h" run-help
bindkey "^[l" "ls^J"
bindkey "^[m" copy-prev-shell-word
bindkey "^[n" history-search-forward
bindkey "^[p" history-search-backward
bindkey "^[q" push-line
bindkey "^[s" spell-word
bindkey "^[t" transpose-words
bindkey "^[u" up-case-word
bindkey "^[w" kill-region
bindkey "^[x" execute-named-cmd
bindkey "^[y" yank-pop
bindkey "^[z" execute-last-named-cmd
bindkey "^[|" vi-goto-column
bindkey "^[~" _bash_complete-word
bindkey "^[^?" backward-kill-word
bindkey "^_" undo
bindkey " " magic-space
bindkey "!"-"~" self-insert
bindkey "^?" backward-delete-char
bindkey "\M-^@"-"\M-^?" self-insert


