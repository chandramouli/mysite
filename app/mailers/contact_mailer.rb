class ContactMailer < ActionMailer::Base
  

  def contact_mail(subject,message,mail,name)
  	@name = name
  	@email = mail
  	@subject = subject
    @message = message
  	mail(:to=>'mouli.g85@gmail.com', :subject => subject, :from=>mail)
  end
end
