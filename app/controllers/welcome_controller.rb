class WelcomeController < ApplicationController
  def index
    render plain: 'Call +1 559-422-6100 for a joke.'
  end
end
