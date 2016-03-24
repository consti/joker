class JokesController < ApplicationController
  def tell
    joke = Joke.surprise

    # Tell a joke
    response = Twilio::TwiML::Response.new do |r|
      r.Say joke, voice: 'alice', language: 'en-GB'
    end

    render text: response.text
  end
end
