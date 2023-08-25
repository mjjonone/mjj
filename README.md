# mjj大军专用项目，白嫖使人快乐，独乐乐不如众乐乐，有问题欢迎提出Issues
* * *
已打包成的镜像名 mjjonone/mjj:latest，变量设置同下，容器PORT变量可设置为3000,7860等,可根据容器平台要求设置，一般可以设置PORT=3000
* * *
镜像支持x64 arm64,支持项目网址/list 查看节点信息 /sub节点订阅地址
* * *
上传的文件都赋权777 ！！！
* * *
nodejs环境上传index.js package.json start.sh 同时支持 网址/list 查看节点信息 /sub节点订阅地址
* * *
Minecraft相关的服务器 1.Vanilla Bedrock||Minecraft Bedrock 启动文件是bedrock_server
* * *
2.Paper Minecraft Java 启动文件是server.jar
* * *
1-1：上传前重命名原来的bedrock_server为bedrock_server1，再上传start.sh脚本重命名为bedrock_server
* * *
2-1：上传前重命名原来的server.jar为server1.jar，再上传server.jar start.sh 
* * *
在start.sh里面进行变量的填写  
* * *
自动输出vless节点信息,并保存在list.txt
* * *
NEZHA_SERVER=   //nezha地址
* * *
NEZHA_PORT=     //nezha端口
* * *
NEZHA_KEY=      //nezha密匙
* * *
ARGO_DOMAIN=  //隧道固定域名  【未有可不填】
* * *
ARGO_AUTH=    //隧道固定token  【未有可不填】
* * *
WSPATH=argo  【默认值】
* * *
UUID=de04add9-5c68-8bab-950c-08cd5320df18【默认值】
* * *
ARGO_AUTH隧道的token值，具体请看f佬的说明 ，脚本没有设置隧道json，只配置了toekn,只能填token值
* * *
说明链接：https://github.com/fscarmen2/Argo-X-Container-PaaS/blob/main/README.md
* * *
