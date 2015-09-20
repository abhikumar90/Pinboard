Rails.application.routes.draw do
  #get 'pinboards/show'

  #get 'pinboards/index'

  #get 'pinboards/create'

  #get 'pinboards/edit'

  devise_for :users

  resources :pinboards

  resources :friendships

  post "/pinboards/new" => "pinboards#create"

  get "/get_all_user_details" =>"pinboards#get_all_user_details"

  get "/view_my_profile" => "pinboards#view_my_profile"

  get "/block_users" => "pinboards#block_users"

  match "/show_user_profile/:id" => "friendships#show_user_profile",:via => [:get,:post]

  match "/delete/:id" => "friendships#destroy",:via => [:get,:post]

  match "/assign_picture_to_user/:id" => "friendships#assign_picture_to_user",:via => [:get,:post]

  #post "" => "friendships#assign_picture_to_user"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root :to => redirect('/pinboards')
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
