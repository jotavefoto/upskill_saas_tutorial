# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port              => ENV['MAILGUN_SMTP_PORT'],
    :address           => ENV['MAILGUN_SMTP_SERVERT'],
    :user_name         => ENV['MAILGUN_SMTP_LOGIN'],
    :password          => ENV['MAILGUN_SMTP_PASSWORD'],
    :domain            => 'limitless-eyrie-55602.herokuapp.com',
    :authentication    => :plain,
    
}

ActionMailer::BNase.delivery_method = :smtp