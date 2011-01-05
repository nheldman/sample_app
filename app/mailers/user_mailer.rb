class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  default_url_options[:host] = "localhost:3000"

  def welcome_email(user)
    @user = user
    mail(:to => user.email,
         :subject => "Welcome to the Rails Tutorial Sample App!")
  end
end
