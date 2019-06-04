# MapBox本地化部署策略

------


> * Nginx发布当前项目来运行
> * 使用的为谷歌地图切片
> * 对应文档为：https://blog.csdn.net/weixin_42655593/article/details/86075689
> * 具体部署策略如下：

1：下载Nginx修改配置文件 nginx.conf 中的：
```
location / {
            #修改当前路径 端口为80，如为其他端口请修改html中请求路径
            root   C:\Users\Administrator\Desktop\MapBox;
            index  index.html index.htm;
        }
```
2：启动Nginx即可看到本地化。
3：切片数据如果本地化则可以实现真正本地化部署。


