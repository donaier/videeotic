var server = require("./modules/server"); 
var router = require("./modules/router"); 
var rhandlers = require("./modules/request_handlers"); 

var handle = {}
handle["/"] = rhandlers.library;
handle["/library"] = rhandlers.library;
handle["/play"] = rhandlers.play;

server.start(router.route, handle);
