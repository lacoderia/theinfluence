ActionMailer::Base.smtp_settings = {
  address: "theinfluence.co",
  port: 587,
  domain: ENV["DOMAIN_NAME"],
  authentication: "plain",
  enable_starttls_auto: true,
  user_name: ENV["GMAIL_USERNAME"],
  password: ENV["GMAIL_PASSWORD"]
}
