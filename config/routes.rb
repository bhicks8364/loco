Rails.application.routes.draw do
  resources :bands
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clear'
  get '/cart/checkout' => 'cart#checkout', as: :checkout
  get '/cart/:id' => 'cart#add', as: :add_to_cart

  devise_for :users
  resources :vendors
  resources :events do 
    resources :show_times
    collection do
      get :past
      get :upcoming
      get :calendar
      get :attending
      get :all, action: :index
    end
  end
  resource :transaction

  get 'home' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  get 'videos' => 'home#videos'
  get 'fall' => 'home#fall'
  get 'loco' => 'home#loco'
  get 'mongo' => 'home#mongo'
  get 'donate' => 'home#donate'
  get 'info' => 'home#info'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
