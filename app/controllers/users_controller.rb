class UsersController < ApplicationController
  def new
    @title="Sign up "
    #render :text => "Welcome to the Sign up page "
  
  end

  def show
    @user =User.find(params[:id])
  end

end
