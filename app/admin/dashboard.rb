ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

     columns do
       column do
         panel "Recent Posts" do
           ul do
             Post.last(5).each do |post|
               li link_to(post.title, admin_post_path(post))
             end
           end
         end
       end
        column do
         panel "Recent Authors" do
           ul do
             Author.last(5).each do |author|
               li link_to(author.full_name, admin_author_path(author))
             end
           end
         end
       end


     end
  end 
end
