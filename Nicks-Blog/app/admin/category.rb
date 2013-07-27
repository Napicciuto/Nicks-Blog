ActiveAdmin.register Category do
  
  menu parent: "Blog Tools", priority: 4
  
  index do
     selectable_column
     column :name

     default_actions
   end
  
end