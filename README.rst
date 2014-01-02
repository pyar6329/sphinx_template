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

    $ git clone 
    $ cd 
    $ bash mk_sphinx.sh ProjectName

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

