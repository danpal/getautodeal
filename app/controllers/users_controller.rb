class UsersController < ApplicationController
  
  before_filter :authorize, :only => [:show, :index]
  
  def new
    @user = User.new
  end


  def create
    @user = User.new(params[:user])
    if @user.save
      #goto form 2
      render 'pages/page2'
    else
      render 'pages/index'
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to page3_path, :notice => "You are done !"
    else
      render 'pages/page2'
    end

  end

  #Require auth to see
  def show
    @user = User.find(params[:id])
  end

  def index 
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    if @user
      @user.destroy
    end
    redirect_to users_url
  end

  private

  def authorize()
    authenticate_or_request_with_http_basic do |username, password|
      username == ADMINUSER && password == ADMINPASSWORD
    end
  end

end
