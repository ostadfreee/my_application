class Contact < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact.send_email.subject
  #
  def send_email(name, message)
    @greeting = "Hi"
    @name = name 
    @message = message
    
    mail to: "ostadfree@gmail.com"
  end
end
