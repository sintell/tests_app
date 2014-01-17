# Basic signup controller

User = require '../models/user'

exports.index = (req, res) ->
  console.log(req.body)
  res.send(req.body)