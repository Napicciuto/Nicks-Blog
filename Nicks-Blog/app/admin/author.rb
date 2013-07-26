ActiveAdmin.register Author do  
  
  menu parent: "Blog Tools", priority: 1    
  
  index do
    selectable_column
    column :full_name
    column :post_count
    column :last_post
    column :created_at
    column :updated_at
    
    default_actions
  end
  
end

