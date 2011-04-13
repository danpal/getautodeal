class PagesController < ApplicationController
  def index
    @user = User.new
  end
  
  def page2()
    #user = User.find(id)
  end
  
  def faq
  end

  def contact_us
  end

  def help
  end

end
