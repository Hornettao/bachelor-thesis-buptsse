Bachelor Thesis Template
========================

LaTeX template for bachelor thesis based on specification from Beijing University of Post and Telecommunication (BUPT).

北京邮电大学本科毕业设计论文 LaTeX 模板。

简介(Introduction)
------------------

首先感谢樊高峰学长创建了 [buptthesis-bachelor][1] 作为本人毕业设计论文最初的模板。在毕业设计论文撰写与格式调教的过程中对学长的模板进行了许多更改，这个仓库对这些更改进行一个系统的整理和发布。

本模板格式规范参照 2014 年《北京邮电大学本科毕业设计指导手册》执行。对论文的字体、页面格式、图表格式、文献格式、目录格式进行了实现以及修正。部分非论文内容（封面、检查表、诚信声明等）由于一致性原因需要由 Microsoft Word 填写并导出至 PDF 文档。另外需要说明的是本模板所使用的审查标准为本人所在的软件学院答辩决议小组标准，由李晶老师负责格式审核。

作为学术研究和学术报告撰写基础中的基础 LaTeX 是非常重要的论文撰写工具，对使用 Microsoft Word 进行论文编排工作的各位科学工作者们本人只能对生产力的差距感到深深的无奈和遗憾。

对于致力于科学研究的后辈们，本人推荐你们体验并使用 LaTeX 来撰写你们的毕业论文。

这份说明文件从零开始介绍 LaTeX 环境的搭建、模板的使用方法以及论文撰写的小技巧。如果你还不知道 LaTeX 要如何使用，本文与本模板也是适合你的阅读与使用的，你可以将本文当作 An Introduction to Thesis Writing with LaTeX 进行阅读。

环境(Environment)
-----------------

使用 Windows 的童鞋推荐 MiKTeX 集成编辑环境并注意使用 XeLaTeX+BibTex 编译参数。

使用 \*nix 的童鞋可以考虑直接安装 [TexLive](https://www.tug.org/texlive/quickinstall.html)，各大 Linux 源会打包 TexLive 软件包，但是本人不推荐使用。下面是使用 `install-tl` 脚本安装 TexLive 过程中的一些注意事项

- 如果希望安装更加集中请开启 portable 安装选项
- 安装完成后请注意配置环境变量 (任何时候都可以配置)
- 如果不希望进行 Full Installation (约4GB) 可以选择更小的安装 Scheme
  * 安装完成后请执行 `tlmgr install texliveonfly` 安装 `texliveonfly`
  * 正式编译之前需要使用 `texliveonfly -c xelatex main.tex` 检查并安装依赖包

结构(Structure)
---------------

- **thesis.sty** 模板样式定义
- **ctex.cfg** ctex 包配置文件
- **reference.bib** 文献引用数据库
- **main.tex** 主 Tex 定义文件
- **parts** 文档目录
- **figures** 图形目录
- **templates** Word 表格模板目录

需要特别说明的是 **parts/forms** 目录用于存放毕业设计封面、表格的 PDF 文档，这些文档的模板可以在 **templates** 目录内找到。

编辑(Editing)
-------------

(待补完)

参考一下在下的渣论文应该就能了解大致的写作模式了……

关于 SVG 图形需要一点特殊说明，正文内使用 PDF 图形，因此 SVG 图形需要在被使用之前被转换为 PDF 图像。`figures/svg2pdf.bash` 脚本会使用 InkScape 将 `figures/svg` 目录下的 SVG 图形转换为 PDF 图形。

编译(Compilation)
-----------------

MiKTeX 用户应该不需要关心这部分的内容。

使用 `latexmk -xelatex` (如果没有请使用 `tlmgr install latexmk` 安装) 编译文件，`latexmk` 工具会自动处理编译次数的问题。

必要的时候使用 `latexmk -C` 清理工作区（包括编译生成的 main.pdf 文件）

`release.bash` 是对 git 仓库的某个提交/TAG/分支进行编译的脚本，使用方法是 `./release.bash master`/`./release.bash v2.2`。

文献管理(Reference)
-------------------

在论文撰写过程中所查阅的资料都应该添加到 reference.bib 数据库当中，JabRef 是管理文献引用的一个好工具。

文献引用的 BibTeX 代码可以在各大外文论文检索网站上找到，对于中文论文检索站点，可以通过 JabRef 导入其他格式的论文数据进入 reference.bib

后记(Afterword)
---------------

论文正文就是一片水，应该没人会吐槽正文的内容！

License
-------

(The MIT License)

  [1]: https://code.google.com/p/buptthesis-bachelor/

