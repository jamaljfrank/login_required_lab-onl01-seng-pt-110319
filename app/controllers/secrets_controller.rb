class SecretsController < ApplicationController
  def new
  end
  
  def show 
    if !logged_in?
      redirect_to login_path
    else 
      redirect_to show_path
    end
  end
end
