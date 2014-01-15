# Just renders index.jade

module.exports =
  index: (req, res) ->
    res.render 'index'

  # Signup handler
  signup: (req, res) ->
    res.render 'signup'