execSync = require('child_process').execSync;

ewgTestPath = 'test_fixtures/ewg'

# console.log 'preparing test_fixtures folder'
# execSync("rm -rf #{ewgTestPath}")
# execSync("mkdir -p #{ewgTestPath}")
#
# console.log 'running "ewg init --theme=all" in test_fixtures folder'
# execSync("cd #{ewgTestPath} && ewg init --theme=all")

console.log 'running "npm install" in test_fixtures folder'
execSync("cd #{ewgTestPath} && npm install")

console.log 'running "ewg generate-and-exit --production" in test_fixtures folder'
execSync("cd #{ewgTestPath} && ewg generate-and-exit --production")
