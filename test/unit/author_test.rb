require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

	def test_all_required_are_present
		author = Author.new
		author.first_name = "nick"
		author.last_name = "picciuto"
		author.email = "email@email.com"
		author.password = "newpass11"
  		author.password_confirmation = "newpass11"
		assert author.save, "all required are present"
	end

	def test_first_name_is_present_failure
		author = Author.new
		author.first_name = ""
		author.last_name = "picciuto"
		author.email = "email@email.com"
		author.password = "newpass11"
  		author.password_confirmation = "newpass11"
		assert !author.save, "first name is not present"
		
	end	
	
	def test_last_name_is_present_failure
		author = Author.new
		author.first_name = "nick"
		author.last_name = ""
		author.email = "email@email.com"
		author.password = "newpass11"
  		author.password_confirmation = "newpass11"
		assert !author.save, "last name is not present"
	end

	def test_email_is_present_failure
		author = Author.new
		author.first_name = "nick"
		author.last_name = "picciuto"
		author.email = ""
		author.password = "newpass11"
  		author.password_confirmation = "newpass11"
		assert !author.save, "all required are valid"		
	end
	
	def test_email_failure
		author = Author.first
		author.email = "emailemail.com"
		assert !author.save, "email is not validate failure"
	end
	
	def test_email
		author = Author.first
		author.email = "email@email.com"
		assert author.save, "email is validate"
	end
  
	def test_password_failure
  		# password confirmation failure
  		author = Author.first
  		author.password = "newpass"
  		author.password_confirmation = "testpass"
  		assert !author.save, "Password did not match"		
  	end
  
  	def test_password
    	# password confirmation pass
  		author = Author.first
  		author.password = "newpass11"
  		author.password_confirmation = "newpass11"
  		assert author.save, "Password did match"
  	end

	def test_full_name_method
		assert_not_nil Author.first.full_name, "Full name method is not working"
	end
	
	def test_post_count_method
		assert_not_nil Author.first.post_count, "Post count method is not working"
	end
	
	def test_last_post_method 
		assert_not_nil Author.first.last_post, "Last post method is not working"
	end
end
