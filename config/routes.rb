NicksBlog::Application.routes.draw do
  
  # homepage
  root :to => 'pages#index'
   
  ActiveAdmin.routes(self)
    
  # Devise Users
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :author, :path => "auth", :path_names => { :sign_in => 'login', :password => 'secret', :confirmation => 'verification', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  
  # Account Signup Routes
  match '/sign_up' => 'authors#new'
  match '/sign_up/create' => 'authors#create'
  
  # Pages
  match '/thanks' => 'pages#thanks', as: 'thanks'
  
  get '/categories/:category_id' => 'pages#categories' , as: 'read_category_list'
  match '/categories/post_create' => 'pages#post_create' , as: 'user_post_create'
  
  get '/posts/:post_id' => 'pages#posts' , as: 'read_post'
  match '/posts/comment_create' => 'pages#comment_create' , as: 'user_comment_create'
  
  match '/about_us' => 'pages#about_us' , as: 'about_us'
  match '/contact_us' => 'pages#contact_us' , as: 'contact_us'
  
  # api controllers
  match '/api/:action(.:format)', to: 'api'
  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
