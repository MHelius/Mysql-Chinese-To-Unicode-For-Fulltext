>一个中文转unicode的SQL函数，用于大量数据查询时需要模糊单字匹配的情况下，且不能使用like，快速使用mysql自带的fulltext引擎实现，无需另外搭配solr等其他搜索引擎实现，在简单需求情况下，降低了系统复杂度
------
>This mysql function is use for transform the chinese and other char to unicode, and use it in chinese fulltext query
