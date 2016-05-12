class WelcomeController < ApplicationController
  @@currentPosition = 0

  def index
    if request.method.eql? 'GET'
      @diceValue = ""
      @@currentPosition = 0
    else
      @diceValue = 1 + rand(6)
      @@currentPosition += @diceValue
      @currentPosition = @@currentPosition
    end

  end
end
