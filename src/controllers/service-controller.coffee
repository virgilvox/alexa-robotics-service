class ServiceController
  constructor: (@options) ->

  alexa: (request, response) =>
    {body} = request
    console.log body
    reply =
      version: "1.0"
      response:
        outputSpeech:
          type: "PlainText"
          text: "Success"
        shouldEndSession: true
    return response.status(200).send reply


module.exports = ServiceController
