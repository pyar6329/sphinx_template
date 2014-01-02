===============
Sphinx templete
===============

Sphinxの雛形作成を自動化しました

precondition
============

以下のものが必要です。

#. Sphinx
#. gnu-sed (macの場合。alias sed="gnu-sed"とすること)
#. LaTeX
#. blockdiag



Installation
============

.. code-block:: bash

    $ git clone https://github.com/pyar6329/sphinx_template.git
    $ cd sphinx_template
    $ bash mk_sphinx.sh 'Your Project Name'

Scripts
=======

.. csv-table::
    :header-rows: 1

    script name,detail
    ``mk_sphinx.sh``,プロジェクト作成。他のスクリプトを呼び出す
    ``setting_sphinx.sh``,conf.pyに設定を書き込む
    ``contents_add``,templete.rstをコピーする。source/contents以下に作成される
    ``sphinx_input_redirect.txt``,sphinx-quickstartを実行する際に与える引数
    ``template.rst``,RESTのテンプレート

LICENSE
=======

The MIT License (MIT)

Copyright (c) 2014 Tsukasa Arima

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
