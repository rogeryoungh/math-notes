#!/bin/bash

rm -f ../mdbook/docs/数学分析/0*.md
rm -f ../mdbook/docs/抽象代数/0*.md
rm -f ../mdbook/docs/高等代数/0*.md

python convert.py ../src/数学分析/pages/0001.tex ../mdbook/docs/数学分析/0001.md
python convert.py ../src/数学分析/pages/0002.tex ../mdbook/docs/数学分析/0002.md
python convert.py ../src/数学分析/pages/0003.tex ../mdbook/docs/数学分析/0003.md
python convert.py ../src/数学分析/pages/0004.tex ../mdbook/docs/数学分析/0004.md
python convert.py ../src/数学分析/pages/0005.tex ../mdbook/docs/数学分析/0005.md
python convert.py ../src/数学分析/pages/0006.tex ../mdbook/docs/数学分析/0006.md
python convert.py ../src/数学分析/pages/0007.tex ../mdbook/docs/数学分析/0007.md

python convert.py ../src/高等代数/pages/0001.tex ../mdbook/docs/高等代数/0001.md
python convert.py ../src/高等代数/pages/0002.tex ../mdbook/docs/高等代数/0002.md
python convert.py ../src/高等代数/pages/0003.tex ../mdbook/docs/高等代数/0003.md
python convert.py ../src/高等代数/pages/0004.tex ../mdbook/docs/高等代数/0004.md
python convert.py ../src/高等代数/pages/0005.tex ../mdbook/docs/高等代数/0005.md
python convert.py ../src/高等代数/pages/0006.tex ../mdbook/docs/高等代数/0006.md
python convert.py ../src/高等代数/pages/0007.tex ../mdbook/docs/高等代数/0007.md
python convert.py ../src/高等代数/pages/0008.tex ../mdbook/docs/高等代数/0008.md
python convert.py ../src/高等代数/pages/0009.tex ../mdbook/docs/高等代数/0009.md

python convert.py ../src/抽象代数/pages/0001.tex ../mdbook/docs/抽象代数/0001.md
