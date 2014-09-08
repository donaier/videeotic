var http = require('http');
var url = require("url");
var haml = require('hamljs')

function start(route, handle) {
  function onRequest(request, response) {
    var pathname = url.parse(request.url).pathname;
    var query = url.parse(request.url, true).query;

    console.log("Request for " + pathname + " received.");

    route(handle, pathname, response, query)
  
  }

  http.createServer(onRequest).listen(1337);
  console.log("Server running at http://127.0.0.1:1337/");
};

exports.start = start;
