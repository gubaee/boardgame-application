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

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/welcome'
    else
      redirect_to '/login'
    end

  end

  def destroy
    # byebug
    session.destroy
    redirect_to '/welcome'
  end

  def login
  end

  def welcome
  end
end
