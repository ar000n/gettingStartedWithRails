class CinemaController < ApplicationController
  @@cinemas_on_screen = {'24'=>['9.00AM','12.00AM','8.00PM'],'Kabali'=>['12.00PM','6.00PM'],'Kamattipadam'=>['10.00AM','3.00PM']}
  def index
  end
  def cinema_list
    @running_cinemas = @@cinemas_on_screen.keys
  end
  def show_time
    @show_times = @@cinemas_on_screen
  end
end
