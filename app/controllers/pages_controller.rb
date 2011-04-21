class PagesController < ApplicationController
 
  before_filter :authenticate

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
  
  def authenticate
    puts AUTHENTICATE 
    if AUTHENTICATE == "yes"
      authenticate_or_request_with_http_basic do |username, password|
        username == USERNAME && password == PASSWORD
      end
    end
  
  end

end
