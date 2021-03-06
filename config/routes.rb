MyApplication::Application.routes.draw do
  
  devise_for :authens
  resources :products do 
    resources :reviews     #nested route
end     
resources :inquiries, :only => [:new, :create] do
  get 'thank_you', :on => :collection
end

  root  'static_pages#home'
  match '/products',   to: 'static_pages#projects',   via: 'get'
  match '/services',   to: 'static_pages#services',   via: 'get'
  match '/downloads',   to: 'static_pages#downloads',   via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  #match '/contact',   to: 'static_pages#contact',   via: 'post'
  # match '/contact',   to: 'static_pages#contact',   via: 'get'
  match '/login',   to: 'static_pages#login',   via: 'get'
  match '/index' , to: 'stores#index', via: 'get'
  match '/show/:id', to: 'stores#show', via: 'get', :as=> 'show'
  get  "emailproduct/:id" => "products#email_product", :as => "email_product"
  get "emailcontact" => "static_pages#email_contact", :as => "email_contact"
  post "emailcontact" => "static_pages#email_contact"
  match '/contact' , to: 'inquiries#new', via: 'get'













  

 
  
  
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
