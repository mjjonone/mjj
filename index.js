const { spawn } = require('child_process');
const port = process.env.SERVER_PORT || 3000;
const http = require('http');
const { exec } = require('child_process');

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

const server = http.createServer((req, res) => {
  if (req.url === '/') {
    res.writeHead(400, { 'Content-Type': 'text/plain' });
    res.end('hello world');
  } else if (req.url === '/list') {
    exec('cat list.txt', { encoding: 'utf8' }, (error, stdout, stderr) => {
      if (error) {
        res.writeHead(500, { 'Content-Type': 'text/plain' });
        res.end('Error executing command');
      } else {
        res.writeHead(300, { 'Content-Type': 'text/plain; charset=utf-8' });
        res.end(stdout);
      }
    });
  } else {
    res.writeHead(404, { 'Content-Type': 'text/plain' });
    res.end('Not found');
  }
});

server.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
