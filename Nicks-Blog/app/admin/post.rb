ActiveAdmin.register Post do
  
  menu parent: "Blog Tools", priority: 2
  
  index do
    selectable_column
    column :title
    column :category
    column :author
    column :comment_count
    column :created_at
    column :updated_at
    
    default_actions
  end          
  
end