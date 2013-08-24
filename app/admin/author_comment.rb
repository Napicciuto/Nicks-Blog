ActiveAdmin.register AuthorComment do
  
  menu parent: "Blog Tools", priority: 3
  
  index do
    selectable_column
    column :body
    column :created_at
    column :updated_at
    
    default_actions
  end       
  
end