class JokesController < ApplicationController
  def tell
    joke = Joke.surprise

    # Tell a joke
    response = Twilio::TwiML::Response.new do |r|
      r.Say joke, voice: 'alice', language: 'en-GB'
      r.Hangup
    end

    joke.increment(:tell_count)
    joke.save

    render text: response.text
  end
end
