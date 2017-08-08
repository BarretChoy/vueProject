
# 域名和端口

```
默认(url):http://localhost:1111
```
# 主页数据

## 顶部轮播图数据

### 接口地址

```
url/banner
```
## 秒杀场次数据

### 接口地址

```
url/seckill
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|clock|Y|Number|

## 中部轮播图数据

## #接口地址

```
url/carousel
```

## 促销区域数据

### 接口地址

```
url/promotion
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|page|Y|Number|

## 商品详情页数据

### 接口地址

```
url/detail
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|id|Y|Number|

## 顶部搜索栏模糊搜索数据

### 接口地址

```
url/list
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|keyword|Y|String|

## 主页中部轮播图数据

### 接口地址

```
url/bannersecond
```

## 主页底部轮播图数据

### 接口地址

```
url/bannerthird
```


# 分类导航页面数据

## 列表页销量排序数据

```
url/classify
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|classify|N|String,商品品类|



### 列表页销量排序数据

```
url/sort_price
```
### 参数说明

|参数名|必选|参数说明|
|-|-|-|
|classify|Y|String|
|status|N|0，1，判断升序或降序|
|page|Y|Number,用以分页|


