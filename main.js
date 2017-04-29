exports.main = function(event, context, callback) {
  process.env['PATH'] = process.env['PATH'] + ':' + process.env['LAMBDA_TASK_ROOT'];
  var exec = require('child_process').exec;
  exec('./main haskell', function(error, stdout, stderr) {
    callback(null, {error: error, stdout: stdout, stderr: stderr}); 
  });
}
