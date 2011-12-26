class HomesController < ApplicationController
  def index
  end

  def business_page
  end

  def personal_page_index 	
  end
  
  def personal_page
  end	

  def send_email
  	@name =  params[:name]
  	@email = params[:email]
  	@subject = params[:subject]
  	@message = params[:message]
  	ContactMailer.contact_mail(@subject,@message,@email,@name).deliver
    redirect_to :back
  end
end