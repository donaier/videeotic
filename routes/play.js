var express = require('express');
var router = express.Router();

router.get('/', function(req, res) {
  res.render('play/index', { title: 'Play dem file!', path: req.query.path });
});

module.exports = router;
