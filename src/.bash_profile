if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

export BASH_SILENCE_DEPRECATION_WARNING=1
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Users/stephen/emsdk-portable:/Users/stephen/emsdk-portable/clang/fastcomp/build_incoming_64/bin:/Users/stephen/emsdk-portable/node/8.9.1_64bit/bin:/Users/stephen/emsdk-portable/emscripten/incoming:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/stephen/.sdkman"
[[ -s "/Users/stephen/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/stephen/.sdkman/bin/sdkman-init.sh"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

