class SessionsController < ApplicationController
  def new
  end
  
  def create 
    if current_user
      redirect_to '/new'
    else
      session[:name] = params[:name]
    end
  end
    
  def destroy
    if current_user
      session.delete :name
    end
  end
end
