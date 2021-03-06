#!/bin/bash
GREEN=$'\e[0;32;1m';
RED=$'\e[0;31;1m';
YELLOW=$'\e[1;33;1m';
COLOR_OFF=$'\e[0m';

if [ ! "$#" = "2" ]; then
    echo "$RED""please input 'Your Project Name' 'Your Author Name' !""$COLOR_OFF"
else
    mkdir "$1"
    cd "$1"
    cat ../sphinx_input_redirect.txt | sed -e 's/project_name/'"$1"'/' > tmp.txt
    sed -i -e '/^author_name/c '"$2" tmp.txt
    sphinx-quickstart < tmp.txt
    rm -rf tmp.txt
    bash ../setting_sphinx.sh
    echo "setting_sphinx.sh finish"
    python ../contents_add.py
    echo "contents_add.py finish"
    make html
fi
