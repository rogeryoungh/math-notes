cat style/code/purebook-base.cls   >    style/purebook.cls
cat style/code/pure-font.cls       >>   style/purebook.cls
cat style/code/pure-code.cls       >>   style/purebook.cls
cat style/code/pure-thm-1.cls      >>   style/purebook.cls

if [ "$1" = "--copy" ]; then
  cp ./style/purebook.cls ./src/数学分析/purebook.cls
  cp ./style/purebook.cls ./src/抽象代数/purebook.cls
  cp ./style/purebook.cls ./src/高等代数/purebook.cls
  cp ./style/purebook.cls ./src/考研背诵手册/purebook.cls
fi
