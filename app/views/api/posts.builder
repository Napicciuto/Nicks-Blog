xml.instruct!
xml.response do
  @post.each do |post|
    xml.post(id: post.id, category_id: post.category.id, author_id: post.author.id) do
      xml.title { xml.cdata! post.title }
      xml.body { xml.cdata! post.body }
    end
  end
end