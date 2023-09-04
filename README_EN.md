# A Qualified Repo for mjj's Free Trial Usage

______________________________________________________________________

It is recommended to use a fixed tunnel

______________________________________________________________________

The built image name is mjjonone/mjj:amd64. The variable settings are the same as below. The container PORT variable can be set to 3000, 7860, etc. It can be set according to the requirements of the container platform. Generally it can be set to PORT=3000.

______________________________________________________________________

Some platforms may detect keywords. Use the packaged dockerfile file to solve it. Project address link: [https://github.com/mjjonone/mjj-docker. ↗](https://github.com/mjjonone/mjj-docker.) Please fork this repo before deployment.

______________________________________________________________________

The image supports x64 arm64 and supports the project website /list to view node information and /sub to view subscription addresses.

______________________________________________________________________

Uploaded files are all chmod 777, except server.jar which is chmod 444!!!

______________________________________________________________________

Some game hosting platforms: [https://github.com/Myuui/Free-Minecraft-Hosts.git ↗](https://github.com/Myuui/Free-Minecraft-Hosts.git)

______________________________________________________________________

# Docker and similar platforms

https://app.patr.cloud/deployment

https://huggingface.co/

https://www.render.com

https://www.back4app.com/

https://codesandbox.io/

https://glitch.com/

https://replit.com/

https://www.render.com/

https://fly.io/

______________________________________________________________________

- Node.js environment, upload index.js package.json start.sh, supports website /list to view node info and /sub to view subscription addresses

- Minecraft related servers

1. Vanilla Bedrock||Minecraft Bedrock startup file is bedrock_server

1. Paper Minecraft Java startup file is server.jar

1-1: Rename the original bedrock_server to bedrock_server1 before uploading, then upload the start.sh script and rename it to bedrock_server

2-1: Rename the original server.jar to server1.jar before uploading, then upload server.jar start.sh

- Fill in variables in start.sh

- Automatically output vless node info and save to list.txt

NEZHA_SERVER=   // Nezha address   \[Leave empty if not available\]

NEZHA_PORT=     // Nezha port \[Leave empty if not available\]

NEZHA_KEY=      // Nezha key \[Leave empty if not available\]

NEZHA_TLS Defaults to TLS, leave '' for no TLS

ARGO_DOMAIN=  // Fixed domain name for tunnel \[Leave empty if not available\]

ARGO_AUTH=    // Token or json for tunnel \[Leave empty if not available\]

WSPATH=argo  \[Default value\]

UUID=de04add9-5c68-8bab-950c-08cd5320df18 \[Default value\]

For the value of ARGO_AUTH tunnel, please refer to the explanation of f.

Explanation link: [https://github.com/fscarmen2/Argo-X-Container-PaaS/blob/main/README.md ↗](https://github.com/fscarmen2/Argo-X-Container-PaaS/blob/main/README.md)

______________________________________________________________________
