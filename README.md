# 合格的mjj专用白嫖项目,必看说明，必看说明！
白嫖使人快乐，独乐乐不如众乐乐。如果您有任何问题，请随时提出Issues。
---

Documentation: [English version](https://github.com/mjjonone/mjj/blob/main/README_EN.md) | 中文版

---

更新说明
- nezha cloudflared 更新到最新版本
- 修复nezha启动问题
- 修复argo隧道json的使用
- 增加保活说明
- 修复glitch的封禁问题，对start.sh脚本的内容进行混淆处理，同时对package.json里面的作者名信息进行删除（怀疑本人github名信息已经进入黑名单）。
- 修复render的封禁问题，如需使用请转到本人仓库下的goodplus项目，采用镜像部署。
- 重大更新 cloudflared固定隧道token形式 在面板里需要设置为http://localhost:8081
- 修复在alpine系统的运行错误
- 以下是创建的免费容器节点订阅，可直接使用。
- 全平台订阅地址:https://free.king361.cf/sub?ip=skk.moe&port=8443  (备用网址：https://free.889876.xyz/sub?ip=skk.moe&port=8443 ） 其中skk.moe与8443可以自行替换优选域名(或者优选ip)以及端口。
-  [在线订阅转换](https://sub.cfip.gay)。
-  可自定义的自带优选订阅：https://add.king361.cf/?uuid=d342d11e-d424-4583-b36e-524ab1f0afa4&host=edgood.king361.cf&path=?ed2048
- 下面是参数的定义，适合所有使用ws的cf cdn 节点
- host：您的伪装域名。
- uuid：您的UUID。
- path：您的服务的自定义路径。（不需要/)
- 提供一个收集的订阅合集 clash与singbox也可以直接订阅，不用转换  https://allsub.king361.cf/
- 如果king361.cf网址失效，可替换成889876.xyz
---

推荐使用临时隧道。

---
保活使用uptimerobot监控项目网址，如果不会使用，自行搜索。[网站地址](https://uptimerobot.com)
---

已打包成的镜像名为`mjjonone/mjj:amd64`，变量设置如下：容器的`SERVER_PORT`变量可设置为3000、7860等，具体根据容器平台的要求进行设置，一般可以将`SERVER_PORT`设置为3000。

---
```diff
!有些平台会检测关键词（比如render,huggingface)，可以使用打包好的Dockerfile文件解决，建议都Fork仓库再部署，防止封号。in red
!! 无法用github仓库部署的平台（比如huggingface），复制下面Dockerfile文件的内容，然后新建Dockerfile文件，要求内容一样
!!!   请先Fork下面的仓库，再部署你自己Fork的仓库。（必看）
```
Dockerfile文件仓库 [项目地址链接](https://github.com/mjjonone/mjj-docker)
---

镜像支持x64和arm64架构，支持通过项目网址`/list`查看节点信息和`/sub`节点订阅地址。容器平台可能会睡眠，请更新订阅试试

---

游戏托管平台需要上传的文件要赋予权限777，除了`server.jar`，它的权限要设置为444。

---

一些游戏托管平台：[https://github.com/Myuui/Free-Minecraft-Hosts.git](https://github.com/Myuui/Free-Minecraft-Hosts.git)

---

docker以及类似平台：

- [https://app.patr.cloud/deployment](https://app.patr.cloud/deployment)
- [https://huggingface.co/](https://huggingface.co/)
- [https://www.render.com](https://www.render.com)
- [https://www.back4app.com/](https://www.back4app.com/)
- [https://codesandbox.io/](https://codesandbox.io/)
- [https://glitch.com/](https://glitch.com/)
- [https://replit.com/](https://replit.com/)
- [https://fly.io/](https://fly.io/)

---

在node.js环境中，上传`index.js`、`package.json`和`start.sh`文件，同时支持通过网址`/list`查看节点信息和`/sub`节点订阅地址。

---

Minecraft相关的服务器(同时支持通过网址`/list`查看节点信息和`/sub`节点订阅地址)：
1. Vanilla Bedrock或Minecraft Bedrock，启动文件为`bedrock_server`。
2. Paper Minecraft Java，启动文件为`server.jar`。
3. Minecraft Bungeecord 的启动文件已经打包成server1.jar,直接上传即可，配合2-1的方法

---

1-1：在上传之前，将原来的`bedrock_server`重命名为`bedrock_server1`，然后上传`start.sh`脚本并将其重命名为`bedrock_server`。

2-1：在上传之前，将原来的`server.jar`重命名为`server1.jar`，然后上传`server.jar`和`start.sh`。

---

在`start.sh`文件中填写变量信息。

---

自动输出vless节点信息，并保存在`list.txt`文件中。

---

变量说明：

- `NAME`：节点名称，默认ips。
- `CFIP`：优选IP或网址，默认icook.hk。
- `NEZHA_SERVER`：Nezha地址（如果没有可不填）。
- `NEZHA_PORT`：Nezha端口（如果没有可不填）。
- `NEZHA_KEY`：Nezha密匙（如果没有可不填）。
- `TLS`：默认为1，代表开启nezha tls,如果不需要TLS，请将变量设置为0(nezha是 443端口的需要开启，如果默认的是5555端口不需要）。
- `ARGO_DOMAIN`：隧道固定域名（如果没有可不填）。
- `ARGO_AUTH`：隧道的token或者json（如果没有可不填）。
- `WSPATH`：默认值为`argo`。
- `UUID`：默认值为`de04add9-5c68-8bab-950c-08cd5320df18`。
- `ARGO_AUTH`：隧道的值，请参考f佬的说明。
- 变量的填写方法也可以参考f佬的说明。以下是说明链接。

说明链接：[https://github.com/fscarmen2/Argo-X-Container-PaaS/blob/main/README.md](https://github.com/fscarmen2/Argo-X-Container-PaaS/blob/main/README.md)

> 鸣谢
F佬，3Kmf佬，WL佬，HF佬

## 免责声明:
* 本程序仅供学习了解, 非盈利目的，请于下载后 24 小时内删除, 不得用作任何商业用途, 文字、数据及图片均有所属版权, 如转载须注明来源。
* 使用本程序必循遵守部署免责声明。使用本程序必循遵守部署服务器所在地、所在国家和用户所在国家的法律法规, 程序作者不对使用者任何不当行为负责。
