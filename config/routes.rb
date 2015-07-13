Rails.application.routes.draw do

  devise_for :users
  root to: 'exercises#index'
  resources :exercises do
    resources :images
  end

  # get "/exercises" => 'exercises#index'
  # get "/exercises/new" => "exercises#new"
  # post "/exercises" => 'exercises#create'
  # get "/exercises/:id" => 'exercises#show'
  # get "/exercises/:id/edit" => 'exercises#edit'
  # patch "/exercises/:id" => 'exercises#update'
  # delete "/exercises/:id" => 'exercises#destroy'


  get "/categories" => 'categories#index'
  get "/categories/new" => 'categories#new'
  post "/categories" => 'categories#create'

  get "/comments" => 'comments#index.html'
  get "/comments/new" => 'comments#new'
  post "/comments" => 'comments#create'
  get "/comments/:id" => 'comments#show'
  get "/comments/:id/edit" => 'comments#edit'
  patch "/comments/:id" => 'comments#update'
  delete "/comments/:id" => 'comments#destroy'

  get "/home" => 'pages#home'
  get "/about" => 'pages#about'
  get "/feature" => 'pages#feature'
  get "/test" => 'pages#test'
  get "/footer" => 'pages#footer'
  get "/workout" => 'pages#workout'

  get "/routines" => 'routines#index.html'
  get "/routines/new" => 'routines#new'
  post "/routines" => 'routines#create'
  get "/routines/:id" => 'routines#show'
  get "/routines/:id/edit" => 'routines#edit'
  patch "/routines/:id" => 'routines#update'
  delete "/routines/:id" => 'routines#destroy'

  get "/my_exercises" => 'my_exercises#index'
  post "/my_exercises" => 'my_exercises#create'
  get "/my_exercises/:id" => 'my_exercises#show'

  # get "/images/new" => 'images#new'
  # post "/images" => 'images#create'
  # get "/images/:id/edit" => 'images#edit'
  # patch "/images/:id" => 'images#update'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
