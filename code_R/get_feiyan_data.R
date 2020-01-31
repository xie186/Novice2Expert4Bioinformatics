require(jsonlite)

url = 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_h5&callback=1580373566110'
x = readLines(url, encoding="UTF-8")
x = sub("^\\d+", "", x)
x = sub("^\\(", "", x)
x = sub("\\)$", "", x)
y = fromJSON(x)
d = fromJSON(y$data)


dd = d$areaTree[1,2][[1]][,c(1,3)]
df = data.frame(name = dd$name,
                confirm = cut(dd$total$confirm, c(1,10,100,500,1000,10000),
                              include.lowest = T, right=F))
