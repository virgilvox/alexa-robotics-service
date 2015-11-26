class ServiceController
  constructor: (@options) ->

  alexa: (request, response) =>
    {body} = request
    console.log body
    reply =
      outputSpeech:
        type: "Plaintext",
        text: "You hit the service yey!"
      shouldEndSession: true
    return response.status(200).send


module.exports = ServiceController
