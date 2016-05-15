Rails.application.routes.draw do
  get 'preorders/show'
  get 'preorders/thanks'

  get 'project/create', to: 'project#create'
  get 'project/edit/:id', to: 'project#edit'
  get 'project/:id', to: 'project#show', as: "project"
  post 'project/update/:id', to: 'project#update'
  get 'team/:id', to: 'team#show', as: "team"
  get 'team/register', to: 'team#create'


  get 'user/show'
  get 'user/edit'
  get 'search/', to: 'search#index'
  get 'portfolio/create'
  get 'portfolio/view'
  get 'user/all', to: 'user#all'
  get 'user/projects', to: 'user#projects'
  get 'user/:id', to: 'user#show', as: "user"
  get 'user/', to: 'user#show'
  get 'register/', to: 'user#register'
  get 'login/', to: 'user#login'
  post 'register', to: 'user#create'
  post 'auth', to: 'user#auth'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'main_page#index'

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
