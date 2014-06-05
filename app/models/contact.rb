class Contact < MailForm::Base
  attribute :nombre,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :empresa,  :validate => true
  attribute :telefono,  :validate =>true
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Nuevo Lead",
      :to => "isabel@juntostudio.com",
      :from => %("#{nombre}" <#{email}>)
    }
  end
end