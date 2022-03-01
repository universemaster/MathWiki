#!/bin/bash

CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BGGREEN='\033[1;42m'
NC='\033[0m'

Math()
{
    echo "$1" | sed 's/\ R\ /\ \$\\R\$\ /g' | sed 's/\ implies\ /\ \$\\Rightarrow\$\ /g' | sed 's/\ iff\ /\ \$\\Leftrightarrow\$\ /g'
}

Format()
{
    echo "$1" | sed 's/\\/\\\\/g' | sed 's/\ /\\s/g' | sed 's/\[/\\\[/g' | sed 's/\]/\\\]/g' | sed 's/(/\\(/g' | sed 's/)/\\)/g' | sed 's/{/\\{/g' | sed 's/}/\\}/g' | sed 's/\$/\\\$/g' | sed 's/\^/\\\^/g' | sed 's/|/\\|/g' | sed 's/+/\\+/g' | sed 's/\./\\./g'
}

cd ~/MathWiki/Notes

allFiles=$(grep -l '%%auto_aliasing%%' *)

allMathLinks=$(grep -Poh '\[[^\[^\]]*\]\(([^\$^\[^\]]+%20)+[^\$^\[^\]]*(\.md)*\)' * | sort | uniq)

allMathCurrent=$(echo "$allMathLinks" | sed 's/\[\([^]]*\)\].*/\1/g')

allMathNewObsidian=$(echo "$allMathLinks" | sed 's/\[\([^]]*\)\](\(.*$\)/\2/g' | sed 's/.$//g')
allMathNew=$(echo "$allMathNewObsidian" | sed 's/\(.*\).md/\1/' | sed 's/%20/\ /g')
allMathNew=$(Math "$allMathNew")

allDoubleCurrent=$(sed 's/^/\[\[/g' <<< "$allFiles")
allDoubleCurrent=$(sed 's/$/\]\]/g' <<< "$allDoubleCurrent")
allDoubleCurrent=$(sed 's/.md//g' <<< "$allDoubleCurrent")
allDoubleLeft=$(Math "$allDoubleCurrent" | sed 's/\[\[/\[/g' | sed 's/\]\]/\]/g')

while [ ! -z "$1" ]; do
    case "$1" in
        --state|-s)
            echo -e "\n${CYAN}-----STATE-----${NC}\n"

            echo -e "${CYAN}All files tagged with %%auto_aliasing%%:${NC}"
            while IFS= read -r file; do
                echo -e "    $file"
            done <<< "$allFiles"
            printf "\n"

            echo -e "${CYAN}All math links:${NC}"
            while IFS= read -r link; do
                echo -e "    $link"
            done <<< "$allMathLinks"
            printf "\n"

            echo -e "${CYAN}All double links:${NC}"
            while IFS= read -r link; do
                echo -e "    $link"
            done <<< "$allDoubleCurrent"
            printf "\n"

            echo -e "${CYAN}-----STATE-----${NC}\n"

            echo -e "${CYAN}Math changes:${NC}"
            allMathNewTemp=$allMathNew
            while IFS= read -r current; do
                new=${allMathNewTemp%%$'\n'*}
                if [ ! "$current" == "$new" ]; then
                    echo -e "    ${RED}$current${NC} -> ${GREEN}$new${NC}"
                    read -u 1 -n 1 -p "$(echo -e '\n'${CYAN}"    Proceed? [Y/n] "${NC})" proceed
                    if [ -z "$proceed" ] || [ "$proceed" == "Y" ]; then
                        currentFormatted=$(Format "$current")
                        newObsidian=${allMathNewObsidian%%$'\n'*}
                        allMathCurrentFiles=$(grep -l "$newObsidian" *)
                        new=$(echo "$new" | sed 's/\\/\\\\/g')

                        while IFS= read -r file; do
                            sed -Ei 's/'"$currentFormatted"'/'"$new"'/g' "$file"
                            echo "    $file"
                        done <<< "$allMathCurrentFiles"
                    fi
                fi
                allMathNewTemp=${allMathNewTemp#*$'\n'}
            done <<< "$allMathCurrent"
            printf "\n"

            echo -e "${CYAN}Double changes:${NC}"
            allDoubleCurrentTemp=$allDoubleCurrent
            allDoubleLeftTemp=$allDoubleLeft
            while IFS= read -r current; do
                left=${allDoubleLeftTemp%%$'\n'*}
                
                right=${allDoubleCurrentTemp%%$'\n'*}
                right=$(echo "$right" | sed 's/\[\[/\(/g')
                right=$(echo "$right" | sed 's/\]\]/\)/g')
                right=$(echo "$right" | sed 's/\ /%20/g')

                new=$left$right
                if [ ! "$current" == "$new" ]; then
                    echo -e "    ${RED}$current${NC} -> ${GREEN}$new${NC}"
                fi
                allDoubleCurrentTemp=${allDoubleCurrentTemp#*$'\n'}
                allDoubleLeftTemp=${allDoubleLeftTemp#*$'\n'}
            done <<< "$allDoubleCurrent"
            printf "\n"
           ;;
    esac
shift
done