ActiveAdmin.register Category do
  
  menu parent: "Blog Tools", priority: 4
  
  scope :all, default: true
  scope :favorite
  
  index do
     selectable_column
     column :name

     default_actions
   end
  
end