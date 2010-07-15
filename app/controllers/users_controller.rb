class UsersController < ApplicationController
  def new
    @user=User.new  
    @title="Sign up"
   # render :text => "Welcome to the Sign up page "
  
  end

  def show
    #@user =User.find(params[:id])
    @user =User.find(:all)
      #@books = Book.find(:all)
  end

  def create
    @user=User.new(params[:user])
    
    
    if @user.save

    else
      @titl="Sign Up"
      render 'new'
    end
  end 

end
