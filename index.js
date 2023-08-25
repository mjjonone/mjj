const { spawn } = require('child_process');
const port = process.env.SERVER_PORT || process.env.PORT || 3000;
const http = require('http');
const { exec } = require('child_process');
const fs = require('fs');

const startScriptPath = './start.sh';
const listFilePath = 'list.txt';
const subFilePath = 'sub.txt';

fs.chmod(startScriptPath, 0o777, (error) => {
  if (error) {
    console.error(`赋权失败: ${error}`);
    return;
  }

  const startScript = spawn(startScriptPath);

  startScript.stdout.on('data', (data) => {
    console.log(`输出：${data}`);
  });

  startScript.stderr.on('data', (data) => {
    console.error(`${data}`);
  });

  startScript.on('close', (code) => {
    console.log(`子进程退出，退出码 ${code}`);
  });
});

const server = http.createServer((req, res) => {
  if (req.url === '/') {
    res.writeHead(400, { 'Content-Type': 'text/plain' });
    res.end('hello world');
  } else if (req.url === '/list') {
    fs.readFile(listFilePath, 'utf8', (error, data) => {
      if (error) {
        res.writeHead(500, { 'Content-Type': 'text/plain' });
        res.end('Error reading file');
      } else {
        res.writeHead(300, { 'Content-Type': 'text/plain; charset=utf-8' });
        res.end(data);
      }
    });
  } else if (req.url === '/sub') {
    fs.readFile(subFilePath, 'utf8', (error, data) => {
      if (error) {
        res.writeHead(500, { 'Content-Type': 'text/plain' });
        res.end('Error reading file');
      } else {
        res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
        res.end(data);
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