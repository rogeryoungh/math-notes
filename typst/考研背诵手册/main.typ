#import "../template/my-book.typ": project
#show: project.with(
  title: "考研背诵手册",
  author: ( name: "rogeryoungh", url: "https://rogery.dev/")
)

#include "pages/gaoshu.typ"
#include "pages/xiandai.typ"
#include "pages/gailvlun.typ"
