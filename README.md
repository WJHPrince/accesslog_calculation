# 这一批脚本是用来处理HTTP请求产生的access.log文件并进行分析的
## 我们需要什么：
- 筛选访问最多的几个目录
- 筛选访问最多的几个IP
- 分析访问负载与时间的关系
- 统计浏览器类型
- 分析流量来源地理位置
- 分析状态码，区分好`2xx`，`4xx`，`5xx`类状态码
- 生成`web`可视页面
- 相对`Goaccess`提高时间精细度，时间跨度从一个月到一个小时，对于跨度为小时的精细到每30min

## 还有啥需要的可以提出来我能做就做

