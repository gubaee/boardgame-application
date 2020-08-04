class UsersController < ApplicationController

  # this method allows new, and create to skip the authorized method requirement
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def show

  end

  def create

    begin
      @user = User.create(params.require(:user).permit(:username, :password))
      @user.save
      flash[:notice] = "Sucessfully created an account!"
      session[:user_id] = @user.id

      redirect_to '/welcome'
    rescue
      flash[:notice] = "Username already exist!"
      redirect_to '/welcome'
    end

  end
end
