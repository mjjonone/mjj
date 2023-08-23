const { spawn } = require('child_process');

function checkInput(filePath) {
  if (!filePath) {
    throw new Error('脚本文件路径不能为空');
  }

  if (!fs.existsSync(filePath)) {  
    throw new Error('脚本文件不存在');
  }
}

async function executeScript(scriptPath) {

  return new Promise((resolve, reject) => {

    const chmod = spawn('chmod', ['+x', scriptPath]);

    chmod.on('error', reject);

    chmod.on('exit', (code) => {
      if (code !== 0) {
        reject(new Error(`赋权失败,chmod退出码: ${code}`));
        return;
      }

      const script = spawn(scriptPath);

      script.stdout.pipe(process.stdout);

      script.stderr.pipe(process.stderr);

      script.on('error', reject);

      script.on('close', resolve);
    });

  });

}

const scriptPath = './start.sh';

try {

  checkInput(scriptPath);

  await executeScript(scriptPath);

  console.log('脚本执行成功');
  
} catch (err) {

  console.error('错误:', err);

}
