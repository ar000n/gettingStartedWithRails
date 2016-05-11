class WelcomeController < ApplicationController

  def index
    @diceValue = 0
  end
  def new
    # puts "----------------------------------------------"+params.to_s
    # @diceValue = 12
    redirect_to :action => 'index'
  end
end
