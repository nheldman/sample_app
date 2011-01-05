class UserMailer < ActionMailer::Base
  default :from => "notifications@example.com"
  default_url_options[:host] = "stark-water-713.heroku.com"

  def welcome_email(user)
    @user = user
    mail(:to => user.email,
         :subject => "Welcome to the Rails Tutorial Sample App!")
  end
end
