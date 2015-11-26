ServiceController      = require './controllers/service-controller'

class Router
  constructor: (options) ->
    @serviceController = new ServiceController options
  route: (app) =>
     app.post '', serviceController.alexa

module.exports = Router
