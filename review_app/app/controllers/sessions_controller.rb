class SessionsController < ApplicationController
  def index
    redirect_to root_path
  end

  def new
  end

  def create
    profile=Profile.find_by_email(params[ :email])
    if profile && profile.authenticate(params[ :password])
      session[ :profile_id]=profile.id
      redirect_to root_path, notice:
      "Welcome #{profile.fname}, you are now logged in"
    else
      render 'new', alert:
      "Invalid username and/or password"
      end
  end

  def destroy
    session[:profile_id] = nil
    redirect_to root_path, notice:
     "You have successfully logged out"
  end
end
