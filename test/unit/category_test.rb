require 'test_helper'

class CategoryTest < Test::Unit::TestCase

  def test_should_not_save_post_with_no_title
  	category = Category.new
  	assert !category.save, "Category chould NOT save with required fields missing"
  end
  
  def test_should_save_with_all_required
  	category = Category.new
  	category.name = "Name"
  	assert category.save, "Category should save with all required fields"
  end
  
end


