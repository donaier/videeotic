var express = require('express');
var router = express.Router();

var exec = require('child_process').exec;

router.get('/', function(req, res) {
  res.render('library/index', { title: 'library' });
  exec('~/projects/raspberry_stuff/script_demo.sh', function(error, stdout, stderr) {
    console.log(stdout);
  });
});

router.get('/:folders', function(req, res) {
  res.render('library/show', { title: 'library', folders: req.params.folders});
});

module.exports = router;
