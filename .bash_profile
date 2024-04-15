if [ -n "$TMUX" ]; then
    # called inside tmux session, do tmux things
    . ~/.profile

fi
# Trigger ~/.bashrc commands
. ~/.bashrc
eval $(ssh-agent)
ssh-add ~/.ssh/id_ed25519