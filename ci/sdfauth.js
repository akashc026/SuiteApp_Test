const { exec } = require("child_process");
const realm = process.env.realm_master;
const token = process.env.token_master;
const secret = process.env.secret_master;

const real_gapsol = process.env.real_gapsol;
const token_gapsol = process.env.token_gapsol;
const secret_gapsol = process.env.secret_gapsol;
const branch = process.env.CI_COMMIT_BRANCH;
if(branch == "master")
{
var authCmd = `suitecloud account:savetoken --account ${real_gapsol} --authid "cisdf" --tokenid ${token_gapsol} --tokensecret ${secret_gapsol}`;
}
else{
  var authCmd = `suitecloud account:savetoken --account ${realm} --authid "cisdf" --tokenid ${token} --tokensecret ${secret}`;
}

exec(authCmd, [realm,process.setuid(0)], (error, stdout, stderr) => {
  if (error) {
    console.log(`error: ${error.message}`);
    return;
  }
  if (stderr) {
    console.log(`stderr: ${stderr}`);
    return;
  }
  console.log(`stdout: ${stdout}`);
});