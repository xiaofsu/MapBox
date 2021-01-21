# MapBox本地化部署策略

[公瑾大佬的本地化部署文档](https://www.jianshu.com/p/43ce4591c621)

------


> * 发布当前项目来运行并查看
> * 使用的为谷歌地图切片（可以使用本地`mbtiles`来进行使用）
> * 对应文档为：[文档](https://www.xiaofsu.com/archives/MapBox%E6%9C%AC%E5%9C%B0%E5%8C%96%E9%83%A8%E7%BD%B2)
> * 具体部署策略如下：

1：使用`Nginx`或其他，修改配置文件 `nginx.conf` 中的配置：
```conf
location / {
            #修改当前路径 端口为80，如为其他端口请修改index.html中请求路径
            root   C:\Users\Administrator\Desktop\MapBox;
            index  index.html index.htm;
        }
```
2：启动Nginx即可看到本地化。

3：切片数据本地化实现真正本地化部署。

4：增加了`mbtiles`文件夹，内部存放了全球地图（仅限测试使用），可以使用[tileServer](https://github.com/maptiler/tileserver-gl) 来进行解析`mbtiles`来进行访问。

5：更新到了最新正式版的1.4.1版本的js及css文件。

6：国内用户可以查看[gitee](https://gitee.com/xiaoFsu/MapBox)

7：关于自定义雪碧图，可以查看：[自定义雪碧图](https://mp.weixin.qq.com/s/fogjkMfpoea6Wl92-FtINg)

8：~~效果预览：https://map.xiaofsu.com~~ 谷歌服务封禁，大家可以替换成可用的源。

9：使用[mbview](https://github.com/mapbox/mbview)来读取mbtiles文件，docker版本使用：https://hub.docker.com/r/xiaofsu/mbview

