class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.progress_tracker.subject
  #
  def progress_tracker(user, email)
    @user = user
    mail to: email, subject: "Track my progress!"
  end
end
