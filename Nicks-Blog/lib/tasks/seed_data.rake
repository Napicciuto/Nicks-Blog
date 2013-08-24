namespace :blog do
	desc "Add content for starter blog"
	
	categories = ['development','design', 'cooking', 'health', 'movies','tv']
	
	task loader: :environment do
    	puts "clear up old data"
    	Category.destroy_all
    	Author.destroy_all
    	Post.destroy_all
    	
    	categories.each_with_index do |cat, i|
    		favorite = false
    		if i % 2 == 0
	    		favorite = true
	    	end
	    	Category.create!(name: cat, favorite: favorite) 
    	end

		10.times do 
	  		author = Author.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: 'password', password_confirmation: 'password')
	  		(rand(2..15)).times do |i|
	  			Post.create!(author_id: author.id, category_id: Category.all.sample.id, title: Faker::Lorem.words(rand(2..5)), body: Faker::Lorem.paragraphs(rand(3..8)) )
	  		end
	  	end
      
	  	puts "Blog content is loaded!!"
    end
   
end