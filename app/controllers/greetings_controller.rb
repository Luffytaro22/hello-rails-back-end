class GreetingsController < ApplicationController

  # GET /greetings
  def index
    @greetings = Greeting.all

    render json: @greetings
  end
end
