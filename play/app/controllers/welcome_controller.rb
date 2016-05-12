class WelcomeController < ApplicationController

  def index
    if request.method.eql? 'GET'
      @diceValue = ""
      @@currentPosition = -5
      @@gameStart = false
    else
      @diceValue = 1 + rand(6)
      triggerGame @diceValue
      if @@gameStart
        updateCurrentPosition
      else
        @gameStatus = "Need a 6 to start the journey...!!"
      end
    end
  end

  private
  def updateCurrentPosition
    @@currentPosition += @diceValue
    check = @@currentPosition<=>16
    if check == -1
      @currentPosition = @@currentPosition
    else
      if check ==0
        @currentPosition = @@currentPosition
        @gameStatus = 'you won......!!'
      else
        if check ==1
          @@currentPosition-=@diceValue
          @currentPosition = @@currentPosition
        end
      end
    end
  end

  
  def triggerGame number
    if number == 6
      @@gameStart = true
    end
  end
end