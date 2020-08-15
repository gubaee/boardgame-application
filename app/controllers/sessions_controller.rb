class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new

  end

  def show
    @games = Game.all
    # byebug
    @clicked = params[:game]
  end

  def create
    @user = User.find_by(username: params[:username])

    # set user status to online
    
    # byebug
    @user.update_attribute(:online, true)

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end

  end

  def destroy
    # byebug

    # set user status to offline
    # byebug
    @user = User.find_by_id(session[:user_id])
    @user.update_attribute(:online, false)
    session.destroy
    redirect_to '/welcome'
  end

  def login
  end

  def welcome
  end
end
