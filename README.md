# 我的数学笔记

LaTeX 初学者，这些是我学习数学的笔记。

很多地方的描述可能不规范，主要是为了让我自己懂。

使用 `xelatex` 编译。

> 暂时很多坑都没填，…… 好吧，好像一个都没填

## 页面

如果需要修改页面大小，文档前加

```latex
\documentclass{probook}

\geometry{
  paperwidth=158mm,
  paperheight=209mm,
  margin=4mm,
  headheight=2.17cm,
  headsep=4mm
}

%%% .........
```

## 日志

2021-04-14 拼出来了自己的模板 `probook.cls`。

2021-01-06 初始化