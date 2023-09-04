const { spawn } = require('child_process');

const chmod = spawn('chmod', ['775', './start.sh']);

chmod.on('exit', (code) => {
  if (code === 0) {
    const startScript = spawn('./start.sh');

    startScript.stdout.on('data', (data) => {
      console.log(`Output: ${data}`);
    });

    startScript.stderr.on('data', (data) => {
      console.error(`${data}`);
    });

    startScript.on('close', (code) => {
      console.log(`Child process exited with code ${code}`);
    });
  } else {
    console.error(`chmod command returned error code ${code}`);
  }
});
