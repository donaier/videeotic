function route(handle, pathname, response, query) {
  console.log("Routing for " + pathname);

  if (typeof handle[pathname] === 'function') {
    return handle[pathname](response, query);
  } else {
    console.log("No request handler for " + pathname)
    response.writeHead(404, {"Content-Type": "text/plain"});
    response.write("404 Not Found");
    response.end();
  }
}

exports.route = route;
