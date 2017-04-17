class ApplicationMailer < ActionMailer::Base
  default from: 'test@example.com'
  layout 'mailer'

  def send_welcome_email(user)
    @user = user
    mail(:to => @user.email, :subject => "Welcome!")
  end

end
