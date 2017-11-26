var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});
router.get('/boop', function(req, res, next) {
  res.send({text: 'boop'});
});

module.exports = router;
