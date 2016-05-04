class ShowTimeController < ApplicationController
  def index
    @showTime = {"24"=>[9.00,12.00,6.00],"kabali"=>[4.00,6.00],"kamattipadam"=>[9.00,1.00,7.00]}
  end
end
