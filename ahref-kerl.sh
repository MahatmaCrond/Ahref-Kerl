#!/bin/bash

## Bash colours
YELLOW="\033[01;33m"
BLUE="\033[01;34m"
BOLD="\033[01;01m"
RED="\033[01;31m"
RESET="\033[00m"

printf "\n"
echo -e "${BLUE}### Ahref Kerl V 1.0 ###" 
printf "\n"
echo -e "${BOLD}Usage: ./ahref-kerl https://google.com ${RESET}" 
printf "\n"
echo -e "${YELLOW}[i]${RESET}" ${BOLD} $1 ${RESET} 
echo -e "${BLUE}Here is a list of all of the links found on the page${RESET}"
printf "\n"
curl -i $1 -k -L | grep -o -E 'href="([^"#]+)"' | cut -d'"' -f2 | uniq
