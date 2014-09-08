var http = require('http');

function start() {
  function onRequest(request, response) {
    response.writeHead(200, {"Content-Type": "text/plain"});
    response.end("videeotic\n");
  } 
  http.createServer(onRequest).listen(1337);
  console.log("Server running at http://127.0.0.1:1337/");
};

exports.start = start;
