class UserMailer < ActionMailer::Base
  default from: "dev@theinfluence.co"

  def contact_email(contact)
    @contact = contact 
    mail(to: "benjamin@coderia.mx", subject: "Nuevo contacto desde la página #{@contact.name}")
  end
end
