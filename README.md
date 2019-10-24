# MapBox本地化部署策略

------


> * Nginx发布当前项目来运行
> * 使用的为谷歌地图切片（可以使用本地mbtiles来进行使用）
> * 对应文档为：[文档](https://www.xiaofsu.com/archives/MapBox%E6%9C%AC%E5%9C%B0%E5%8C%96%E9%83%A8%E7%BD%B2)
> * 具体部署策略如下：

1：下载`Nginx`修改配置文件 `nginx.conf` 中的配置：
```conf
location / {
            #修改当前路径 端口为80，如为其他端口请修改html中请求路径
            root   C:\Users\Administrator\Desktop\MapBox;
            index  index.html index.htm;
        }
```
2：启动Nginx即可看到本地化。

3：切片数据如果本地化则可以实现真正本地化部署。

4：增加了`mbtiles`文件夹，内部存放了中国地图（仅限测试使用），可以使用[tileServer](https://github.com/maptiler/tileserver-gl) 来进行解析`mbtiles`来进行访问。

5：更新到了最新正式版的1.4.1版本的js及css文件。


