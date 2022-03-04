#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    OS="linux"
    export PLATFORM_BASED_SED='sed -i'
    echo "OS | '$OS'. sed | '$PLATFORM_BASED_SED'. "
elif [[ "$OSTYPE" == "darwin"* ]]; then
    OS="darwin"
    export PLATFORM_BASED_SED="sed -i .cicdbak -e"
    echo "OS | '$OS'. sed | '$PLATFORM_BASED_SED'. "
elif [[ "$OSTYPE" == "win32" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "msys" ]]; then
    OS="windows"
    export PLATFORM_BASED_SED='sed -i '
    echo "OS | '$OS'. sed | '$PLATFORM_BASED_SED'. "
else
    echo "No sed command available for OS '$OSTYPE'. using default."
    export PLATFORM_BASED_SED='sed -i '
    echo "OS | '$OS'. sed | '$PLATFORM_BASED_SED'. "
    exit
fi

# Runs your sed substitution command
# Arguments used:
#  $1 - target directory to recursively substitute files
#  $2 - matching pattern
#  $3 - value to substitute
recursive_substitute() {
    echo ""
    echo "🧍‍♂️🧍‍♂️🧍‍♂️ starting substitution for 🗂 (${1}/*)"
    # INDEX=1
    cd $1
    for FILE in *; do
        echo FILE:$FILE
        if [ -d $FILE ]; then
            echo ""
            echo "😳 😳 😳 found a 🗂 (${FILE}/)"
            echo ""
            echo "🧐 🧐 🧐 starting a recursive substitution"
            recursive_substitute $FILE $2 $3
        else
            file=$(pwd)/$FILE
            str="${PLATFORM_BASED_SED} s@$2@$3@g ${file}"
            echo ""
            COMAND=$(eval $str)
            echo ""
            echo "${COMAND}"
            echo ""
            echo "👏 👏 👏 finished substitution for 📄 ($FILE)"
            rm -v *.cicdbak
        fi
        # INDEX=$(expr $INDEX + 1)
    done
    cd ../
    echo ""
    echo "🏃 🏃 🏃 finished directory ($(pwd)) scanning ... ..."
}

recursive_substitute $1 $2 $3
echo ""
echo "😊 😊 😊 nothing more so far"
