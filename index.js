const { spawn } = require('child_process');
const port = process.env.SERVER_PORT || 3000;
const express = require("express");
const app = express();

const chmod = spawn('chmod', ['+x', './start.sh']);

chmod.on('exit', (code) => {
  if (code === 0) {

    const startScript = spawn('./start.sh');

    startScript.stdout.on('data', (data) => {
      console.log(`输出：${data}`);
    });

    startScript.stderr.on('data', (data) => {
      console.error(`${data}`);
    });

    startScript.on('close', (code) => {
      console.log(`子进程退出，退出码 ${code}`);
    });
  } else {
    console.error(`chmod 命令返回错误码 ${code}`);
  }
});

app.get("/", function (req, res) {
  res.send("hello world");
});
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
