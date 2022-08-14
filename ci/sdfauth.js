const { exec } = require("child_process");

const realmEnvVar = `realm_${process.env.CI_MERGE_REQUEST_TARGET_BRANCH_NAME}`;
const realm = process.env[realmEnvVar];
const tokenEnvVar = `token_${process.env.CI_MERGE_REQUEST_TARGET_BRANCH_NAME}`;
const token = process.env[tokenEnvVar];
const secretEnvVar = `secret_${process.env.CI_MERGE_REQUEST_TARGET_BRANCH_NAME}`;
const secret = process.env[secretEnvVar];

const authCmd = `suitecloud account:savetoken --account ${realm} --authid "cisdf" --tokenid ${token} --tokensecret ${secret}`;

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