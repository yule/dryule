DryuleCom::Application.routes.draw do

  

  


  resources :bets

  resources :games

  get "stuff/moonphase"

  resources :posts

  resources :comments

  resources :beverages, :user_sessions
  
  root :to => "about_me#index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  match 'about-me' => 'about_me#index'
  match 'blog' => 'blog#index'
  match 'beer' => 'beer#index'
  match 'work' => 'work#index'
  match 'photography' => 'photography#index'
  match 'sport' => 'sport#index'

  
  get 'work/mastermind'
  
  get 'work/scotruby'
  get 'sport/previous'
  
  match "login" => "user_sessions#new", :as =>:login
  match "logout" => "user_sessions#destroy", :as =>:logout
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
  # match ':controller(/:action(/:id(.:format)))'
end
