class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save!
      #goto form 2
      render 'pages/page2'
    else
      render 'new'
    end
  end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to page3_path, :notice => "Yikes"
    else
      render 'pages/page2'
    end

  end

  
  
end
