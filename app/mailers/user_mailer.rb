class UserMailer < ApplicationMailer
	default from: "jfmatthews90@gmail.com"

  def contact_form(email, name, message)
  @message = message
  @name = name #added parameter
    mail(from: jfmatthews90@gmail.com,
         to: 'jfmatthews90@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
	  @appname = "Bike Tampa"
	  mail( :to => user.email,
	        :subject => "Welcome to #{@appname}!")
  end

  def successful_payment(user, product)
    @user = user
    @product = product
    mail(:to => user.email,
        :subject => "Confirmation of payment #{product.name}")
  end
end
