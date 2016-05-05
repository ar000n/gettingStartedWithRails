class WelcomeController < ApplicationController
  @@userName = 'arun'
  @@userPassword = '12345'

  def index
    if request.method.eql? 'POST'
      name = params[:welcome][:name]
      password = params[:welcome][:password]
      if (@@userName.eql? name) &&(@@userPassword.eql? password)
        redirect_to url_for(:controller => :cinema, :action => :index)
      else
        @warning = "wrong password or user name,Try again"
      end
    end
  end

end
