class UserMailer < ActionMailer::Base
  default from: "dev@theinfluence.co"

  def contact_email(contact)
    @contact = contact 
    mail(to: "tonklis@gmail.com", subject: "Nuevo contacto desde la página #{@contact.name}")
  end
end
