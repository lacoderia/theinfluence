ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "tonklis@gmail.com",
  :password             => "Oportunidad2013",
  :authentication       => "plain",
  :enable_starttls_auto => true
}
