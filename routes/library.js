var express = require('express');
var router = express.Router();
fs = require('fs');

// var base_path = '/netdrive/'
var base_path = '/Users/donaier/projects/raspberry_stuff/demo_folder_structure/'

var exec = require('child_process').exec;

router.get('/', function(req, res) {
  var base_folders = fs.readdirSync(base_path);
  res.render('library/index', { title: 'library', folders: base_folders });
});

router.get('/:folders', function(req, res) {
  media_path = req.params.folders
  entries = fs.readdirSync(base_path + media_path)

  res.render('library/show', { title: 'library' });
});

module.exports = router;
