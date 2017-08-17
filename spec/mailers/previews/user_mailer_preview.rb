# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
	def contact_form
  	UserMailer.contact_form("jfmatthews90@gmail.com", "James", "This is a test message.")
  end
end
