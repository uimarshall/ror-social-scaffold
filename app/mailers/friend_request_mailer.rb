class FriendRequestMailer < ApplicationMailer
  default from: 'no-reply@gmail.com'

  def friend_request_email
    @user = params[:user]
    @current_user = params[:current_user]
    @url = 'http://localhost:3000'
    mail(to: @user.email, subject: 'Friend request received')
  end
end
