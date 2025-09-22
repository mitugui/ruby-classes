class UserMailer < ApplicationMailer
    default from: 'no-reply@ifpr.local'

    def welcome_email(user)
        @user = user
        @url  = 'http://localhost:3000/sign_in'
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
end
