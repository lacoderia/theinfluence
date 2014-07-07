class UserMailer < ActionMailer::Base
  default from: "dev@theinfluence.co"

  def contact_email(contact)
    @contact = contact 
    mail(to: "todos@theinfluence.co", subject: "Nuevo contacto desde la página - #{@contact.name}")
  end

  def compra_email(product, combo, addon_combo, user)
    @product = product
    @combo = combo
    @addon_combo = addon_combo 
    @user = user
    mail(to: "todos@theinfluence.co", subject: "Petición de compra desde la página") 
  end

  def cotiza_email(product, user)
    @product = product
    @user = user

    mail(to: "todos@theinfluence.co", subject: "Petición de cotización desde la página")

  end

end
