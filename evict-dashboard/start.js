const { exec, execSync } = require('child_process');
const path = require('path');
const fs = require('fs');

const port = process.env.DASHBOARD_PORT || 3000;
const dir = __dirname;

function installDeps() {
  if (!fs.existsSync(path.join(dir, 'node_modules', 'next'))) {
    console.log('Installing Next.js dependencies...');
    execSync('npm install', { cwd: dir, stdio: 'inherit' });
  }
}

function startDev() {
  console.log(`Starting Next.js dashboard on port ${port}...`);
  const child = exec(`npx next dev -p ${port} -H 0.0.0.0`, {
    cwd: dir,
    env: { ...process.env, PORT: String(port) }
  });

  child.stdout.on('data', (data) => process.stdout.write(data));
  child.stderr.on('data', (data) => process.stderr.write(data));
  child.on('exit', (code) => {
    console.log(`Next.js exited with code ${code}`);
    process.exit(code);
  });
}

installDeps();
startDev();
