require 'test_helper'

class AdminUserTest < ActiveSupport::TestCase

	def test_new_user_with_all_required_are_present
		user = AdminUser.new
		user.email = "email@email.com"
		user.password = "newpass11"
  		user.password_confirmation = "newpass11"
		assert user.save, "New user all required are present"
	end
	
	def test_new_new_without_email
		user = AdminUser.new
		user.email = ""
		user.password = "newpass11"
  		user.password_confirmation = "newpass11"
		assert !user.save, "New user email is not present"
	end
	
	def test_new_user_with_bad_email
		user = AdminUser.new
		user.email = "emailemail.com"
		user.password = "newpass11"
  		user.password_confirmation = "newpass11"
		assert !user.save, "New users email is not valid"
	end
	
	def test_new_user_without_password
		user = AdminUser.new
		user.email = "email@email.com"
		user.password = ""
  		user.password_confirmation = ""
		assert !user.save, "New user password is not present"
	end
	
	def test_new_user_password_not_matching
		user = AdminUser.new
		user.email = "email@email.com"
		user.password = "newpass11"
  		user.password_confirmation = "notmatch"
		assert !user.save, "New user pass did not match"
	end
  
	def test_update_email_failure
		admin_user = AdminUser.first
		admin_user.email = "emailemail.com"
		assert !admin_user.save, "updating user email is not validate failure"
	end
	
	def test_email
		admin_user = AdminUser.first
		admin_user.email = "email@email.com"
		assert admin_user.save, "updating user email is validate"
	end
  
	def test_password_failure
  		# password confirmation failure
  		admin_user = AdminUser.first
  		admin_user.password = "newpass"
  		admin_user.password_confirmation = "testpass"
  		assert !admin_user.save, "updating user password did not match"		
  	end
  
  	def test_password
    	# password confirmation pass
  		admin_user = AdminUser.first
  		admin_user.password = "newpass11"
  		admin_user.password_confirmation = "newpass11"
  		assert admin_user.save, "updating user password did match"
  	end
end
