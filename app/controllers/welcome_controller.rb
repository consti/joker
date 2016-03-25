class WelcomeController < ApplicationController
  def index
    render plain: <<-PLAIN
Call +1 559-422-6100 for a joke.
#{Joke.sum(:tell_count)} jokes served.
PLAIN
  end
end
