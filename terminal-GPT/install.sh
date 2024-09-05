#!/bin/bash

if [ ! -f "$HOME/.local/bin/tgpt" ]; then
    curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s $HOME/.local/bin
fi

curl -o $HOME/.local/bin/ai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/ai

curl -o $HOME/.local/bin/run https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/run

curl -o $HOME/.local/bin/bbxai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/bbxai

curl -o $HOME/.local/bin/claudeai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/claudeai

curl -o $HOME/.local/bin/metaai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/metaai

curl -o $HOME/.local/bin/mixai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/mixai

curl -o $HOME/.local/bin/openai https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/openai

# Make the script executable
chmod +x $HOME/.local/bin/{ai,run,bbxai,claudeai,metaai,mixai,openai}
echo installed $HOME/.local/bin/{ai,run,bbxai,claudeai,metaai,mixai,openai}

if [ ! -f "$HOME/glow-pkg/glow-2.0.0-1.x86_64.rpm" ]; then
    mkdir -p $HOME/glow-pkg
    curl -o $HOME/glow-pkg/glow-2.0.0-1.x86_64.rpm https://raw.githubusercontent.com/dev-rajnish/bash-exec/master/terminal-GPT/glow-2.0.0-1.x86_64.rpm
    sudo zypper --no-gpg-checks --no-refresh in --allow-unsigned-rpm --no-recommends -y -l -n $HOME/glow-pkg/glow-2.0.0-1.x86_64.rpm
fi

echo -e "\ndownload tgpt from git searc for tgpt github \n"
echo -e "now run ai and press enter"
