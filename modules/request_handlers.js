var exec = require("child_process").exec;
var haml = require('haml');

function play(response, query) {
  console.log("Request handler 'play' was called.")

  response.writeHead(200, {"Content-Type": "text/plain"});
  response.write("Play!");
  response.end();
}

function library(response, query) {
  console.log("Request handler 'library' was called.")

  var folder_path = query.path || ''
  var path = "/Users/donaier/projects/raspberry_stuff/demo_folder_structure/" + folder_path;
  // var path = "/Users/donaier/projects/raspberry_stuff/demo_folder_structure";
  // var path = "/netdrive/OpenShare/media_center/*";

  exec("ls " + path, function (error, stdout, stderr) {
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.write(stdout);
    response.end();
  });
}

exports.play = play;
exports.library = library;
