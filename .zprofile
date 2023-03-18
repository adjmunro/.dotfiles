local EX=""

# Android
local android="${HOME}/Library/Android/sdk"
export ANDROID_HOME="${android}"
EX="${android}:${android}/tools:${android}/platform-tools"

# Java (Default to Java 19)
local java_exec="/usr/libexec/java_home"
export JAVA_11_HOME="$(${java_exec} -v11)"
export JAVA_17_HOME="$(${java_exec} -v17)"
export JAVA_19_HOME="$(${java_exec} -v19)"
alias java11='export JAVA_HOME=${JAVA_11_HOME}'
alias java17='export JAVA_HOME=${JAVA_17_HOME}'
alias java19='export JAVA_HOME=${JAVA_19_HOME}'
export JAVA_HOME="${JAVA_19_HOME}"
#export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"

# JetBrains Toolbox
EX="${EX}:${HOME}/Library/Application Support/JetBrains/Toolbox/scripts"

# Homebrew
local brew="/opt/homebrew"
export BREW="${brew}/bin"
eval "$(${BREW}/brew shellenv)"

# Open CV
local opencv_ver="4.5.2"
local opencv="${brew}/opt/opencv@${opencv_ver}"
export LDFLAGS="-L${opencv}/lib"
export CPPFLAGS="-I${opencv}/include"
EX="${EX}:${opencv}/bin"

# Export Local
export PATH="${PATH}:${EX}"

