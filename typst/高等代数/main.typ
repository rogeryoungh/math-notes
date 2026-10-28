#import "../template/my-book.typ": project
#show: project.with(
  title: "高等代数笔记",
  author: ( name: "rogeryoungh", url: "https://rogery.dev/")
)


#let circ = math.class(
  "binary",
  sym.circle.stroked.tiny,
)

// 十章正文逐章对应 src/高等代数/main.tex 的 include 顺序。
// 数学与未完成的证明、解答均按源笔记保留；索引链接到术语原位置。
#include "pages/0001.typ"
#include "pages/0002.typ"
#include "pages/0003.typ"
#include "pages/0004.typ"
#include "pages/0005.typ"
#include "pages/0006.typ"
#include "pages/0007.typ"
#include "pages/0008.typ"
#include "pages/0009.typ"
#include "pages/0010.typ"

#include "index.typ"


