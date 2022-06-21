# Undergraduate-final-thesis

This is my undergraduate thesis written in LaTeX. I copy Spinor and Spacetime Vol 1,Penrose 1984 (partically) to Chinese, and explain why massless spin 3/2 Rarita Schwinger Field can only exist in Ricci Flat spacetime(don't consider the backreaction with gravity, the background field). Moreover, the tex code of including a vectorized mathcha logo(tikz) is included.

# 本科毕业论文

这个库包含了本人的本科毕业论文《弯曲时空背景下的Rarita-Schwinger场及其纽曼-彭罗斯形式》，使用了来自 [@Xiangdong Zeng](https://github.com/stone-zeng) 的[复旦大学毕业论文模板](https://github.com/stone-zeng/fduthesis) （的物理系本科毕业版）。本文前半部分将彭罗斯1984年所著《旋量与时空》部分翻译成了中文版。第七章开始是本人自己的工作，用二分量旋量体系解释了为什么无质量的自旋$3/2$场，即Rarita-Schwinger场只能存在于里奇平坦时空中（不考虑对背景引力场的反作用）。除此之外，还包含了可以在LaTeX中插入矢量mathcha-logo的代码，感谢[@Xiangdong Zeng](https://github.com/stone-zeng)。

## 库内文档简介

论文主体位于文档**paper**中。主代码为main.tex，其他为不同章节或者插入代码。

**小程序**包含了文章中用来计算的小程序（包括kerr时空的自旋系数），和画图（可视化洛伦兹变换在黎曼球上的作用）的小程序。除此之外还包含了自动给mathcha导出的公式加编号\label{eq:x.xx}和将(xx)变为\ref{eq:x.xx}的python正则表达式。

**mathcha logo**包含了在LaTeX中插入矢量mathcha-logo的代码。

**文书工作**包含了需要向学校提交的文件，包括但不限于开题报告，中期报告等。（由于文件过大暂未上传）

**文献**包含了毕业论文所引用的文章。（由于文件过大暂未上传）

**spinor and spacetime-note**包含了阅读《旋量与时空》最直接的笔记，由mathcha直接导出。也包含了毕业论文本体前六章（但不完全相同）。（由于文件过大暂未上传）
