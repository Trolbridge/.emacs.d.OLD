const { exec } = require('child_process');

const timestamp = '20190927 10:00:00';

exec(`date --set="${timestamp}"`, (err, stdout, stderr) => {
  if (err || stderr) {
    console.error(err);
    console.log(stderr);
  } else {
    console.log(stdout);
    console.log(`Successfully set the system's datetime to ${stdout}`);
  }
});