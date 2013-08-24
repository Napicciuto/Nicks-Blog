xml.instruct!
xml.response do
  @category.each do |category|
    xml.category(id: category.id) do
      xml.name { xml.cdata! category.name }
      xml.favorite { xml.cdata! category.favorite.to_s }
	  
	  category.posts.each do |post|
         render partial: 'post', locals: { post: post, builder: xml }
       end
    end
  end
end