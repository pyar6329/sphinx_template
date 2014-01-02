#!/bin/bash
cat ./source/conf.py | sed -e "/^import/a import time" > ./source/conf.py
cat ./source/conf.py | sed -e "/^extensions/c extensions = ['sphinxcontrib.blockdiag']" > ./source/conf.py
cat ./source/conf.py | sed -e "/^version/c version = time.strftime('%Y.%m.%d')" > ./source/conf.py
cat ./source/conf.py | sed -e "/^release/c release = time.strftime('%Y.%m.%d')" > ./source/conf.py
cat ./source/conf.py | sed -e "/^#language/a language = 'ja'" > ./source/conf.py
cat ./source/conf.py | sed -e "/^latex_elements/a \  'classoptions': ',openany,oneside'," > ./source/conf.py
cat ./source/conf.py | sed -e "/^#'papersize'/c \  'papersize': 'a4paper'," > ./source/conf.py


cat >> ./source/conf.py << _EOF_

# Fontpath for blockdiag
blockdiag_fontpath = '/Library/Fonts/Osaka.ttf'

# blockdiag antialias of png
blockdiag_antialias = 'True'

# blockdiag html in svg
blockdiag_html_image_format = 'SVG'

# blockdiag pdf in svg
blockdiag_tex_image_format = 'PDF'

_EOF_
