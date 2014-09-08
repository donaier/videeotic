var express = require('express');
var router = express.Router();

router.get('/:path', function(req, res) {
  res.render('play/index', { title: 'Play file!', path: req.params.path });
});

module.exports = router;
