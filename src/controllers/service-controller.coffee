class ServiceController
  constructor: (@options) ->

  alexa: (request, response) =>
    {body} = request
    console.log body
    reply =
      version: "1"
      response:
        outputSpeech:
          type: "Plaintext",
          text: "You hit the service yey!"
        shouldEndSession: true
    return response.status(200).send reply


module.exports = ServiceController
