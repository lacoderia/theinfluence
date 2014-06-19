ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "theinfluence.co",
  :user_name            => "ventas@theinfluence.co",
  :password             => "Chamba123",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
