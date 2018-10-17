class HomeController < ApplicationController
  def index
  end
  
  def email_send
  from_email=params[:from_email]
  to_email=params[:to_email]
  title=params[:title]
  content=params[:content]
  
  Testmail.email(from_email,to_email,title,content).deliver_now
  redirect_to '/'
  end
end
