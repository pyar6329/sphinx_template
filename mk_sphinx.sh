#!/bin/bash
GREEN=$'\e[0;32;1m';
RED=$'\e[0;31;1m';
YELLOW=$'\e[1;33;1m';
COLOR_OFF=$'\e[0m';

if [ ! "$#" = "1" ]; then
    echo "$RED""please input app_name!""$COLOR_OFF"
else
    mkdir "$1"
    cd "$1"
    cat ../sphinx_input_redirect.txt | sed -e 's/project_name/'"$1"'/' > tmp.txt
    sphinx-quickstart < tmp.txt
    rm -rf tmp.txt
    bash ../setting_sphinx.sh
fi
