builder.post(id: post.id, author_id: post.author_id) do
  builder.title { builder.cdata! post.title }
  builder.body { builder.cdata! post.body }
end