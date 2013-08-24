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
  
  form partial: "form"
  
   show full_name: proc { resource.full_name } do
    panel "Contact Request" do
      attributes_table_for resource do
        row(:full_name)
        row(:email) { mail_to resource.email, resource.email }
        row(:address)
        row(:city)
        row(:state)
        row(:zip)
        row(:created_at)
        row(:updated_at)
      end
    end
  end
  
end

