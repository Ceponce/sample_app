class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Clean Slate!"
      redirect_to @user
    else      
      render 'new'
    end
  end

  def update
    @user = User.find(parms[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
    else
      render 'edit'
    end
  end
  
  def destroy
    sign_out
    redirect_to root_path
  end
end
