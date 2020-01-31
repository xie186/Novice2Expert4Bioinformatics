require(jsonlite)

url = 'https://view.inews.qq.com/g2/getOnsInfo?name=disease_h5&callback=1580373566110'
x = readLines(url, encoding="UTF-8")
x = sub("^\\d+", "", x)
x = sub("^\\(", "", x)
x = sub("\\)$", "", x)
y = fromJSON(x)
d = fromJSON(y$data)

saveRDS(d, file="data/Pneumonia_china_2020.RDS")


dd = d$areaTree[1,2][[1]][,c(1,3)]
df = data.frame(name = dd$name,
                confirm = cut(dd$total$confirm, c(1,10,100,500,1000,10000),
                              include.lowest = T, right=F))

## Reference: 微信文章(R画疫情地图第一波(https://mp.weixin.qq.com/s/4Ksgq4FTuLwx5Yprmki_dQ))
