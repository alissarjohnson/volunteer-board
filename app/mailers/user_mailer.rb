class UserMailer < ApplicationMailer
   
  def welcome_email(user)
   @user = user
   @url  = 'https://lit-brook-63057.herokuapp.com/users/sign_in'
   mail(to: @user.email, subject: 'Welcome to Volunteer Board!')
  end
  
  def signup_email(user)
   @user = user
   @url  = 'https://lit-brook-63057.herokuapp.com/users/sign_in'
   mail(to: @user.email, subject: 'You successfully signed up for' + @user.events.last.name)
  end
  
end
