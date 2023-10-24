class GreetingsController < ApplicationController
  before_action :find_greetings
  def index
    @random = rand(0..4)
    @greeting = @greetings[@random]
    render json: @greeting
  end

  private

  def find_greetings
    @greetings = Greeting.all
  end
end
