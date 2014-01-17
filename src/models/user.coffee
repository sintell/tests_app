mongoose = require 'mongoose'

# User model
User = new mongoose.Schema(
  username: String,
  password: String,
  first_name: String,
  middle_name: String,
  last_name: String,
  
  meta: {
    created_at: {type: Date, default: Date.now},
    last_login: {type: Date, default: Date.now}
  }
)

module.exports = mongoose.model 'User', User