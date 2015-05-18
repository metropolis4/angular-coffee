express = require 'express'
bodyParser = require 'body-parser'
stylus = require 'stylus'
coffee = require 'coffee-script'

indexController = require './controllers/index.js'

app = express()

app.set 'view engine', 'jade'
app.set 'views', __dirname + '/views'
app.use express.static __dirname + '/public'
app.use bodyParser.urlencoded extended: false

app.get '/', indexController.index
app.get '/templates/:templateid', (req,res) ->
  res.render 'templates/' + req.params.templateid
app.get '/edit', indexController.edit

server = app.listen 6326, ->
  console.log "Express server listening on port #{server.address().port}"
