const { exec } = require("child_process");
const realm = process.secrets.REALM_TECHNICAL;
const token = process.secrets.TOKEN_TECHNICAL;
const secret = process.secrets.SECRET_TECHNICAL;

const real_gapsol = process.env.real_gapsol;
const token_gapsol = process.env.token_gapsol;
const secret_gapsol = process.env.secret_gapsol;
//const branch = process.env.CI_COMMIT_BRANCH;
// if(branch == "master")
// {
// var authCmd new= `suitecloud account:savetoken --account ${real_gapsol} --authid "cisdf" --tokenid ${token_gapsol} --tokensecret ${secret_gapsol}`;
// }
// els
  var authCmd = `suitecloud account:savetoken --account ${realm} --authid "cisdf" --tokenid ${token} --tokensecret ${secret}`;
//}

exec(authCmd, realm, (error, stdout, stderr) => {
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