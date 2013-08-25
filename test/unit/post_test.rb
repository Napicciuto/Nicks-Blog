require 'test_helper'

class PostTest < Test::Unit::TestCase

  def test_should_not_save_post_with_no_title
  	post = Post.new
  	assert !post.save, "Should NOT save with required fields missing"
  end
  
  def test_should_save_with_all_required
  	post = Post.new
  	post.title = "Title"
  	post.body = "This is the body"
  	post.category = Category.last
  	assert post.save, " Should save with all required fields"
  end
  
  def test_comment_count
  	assert_not_nil Post.first.comment_count
  end

end


