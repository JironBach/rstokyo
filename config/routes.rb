require 'rstokyo/routing'

Rstokyo::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'index#index'
  get 'about' => 'index#about'
  get 'review' => 'index#review'
  get 'corporate' => 'index#corporate'
  get 'sitemap' => 'index#sitemap'
  get 'link' => 'index#link'
  get 'privacy' => 'index#privacy'
  get 'blog' => 'index#blog'
  get 'line' => 'line#index'
  get 'line/station' => 'line#index'
  get 'area' => 'area#index'

  get 'madori' => 'madori#index'
  get 'madori/m1k' => 'madori#m1k'
  get 'madori/m2k' => 'madori#m2k'
  get 'madori/m3k' => 'madori#m3k'
  get 'madori/m4k' => 'madori#m4k'

  get 'conditions' => 'conditions#index'
  get 'conditions/walk5m' => 'conditions#walk5m'
  get 'conditions/y5' => 'conditions#y5'
  get 'conditions/y10' => 'conditions#y10'
  get 'conditions/home' => 'conditions#home'
  get 'conditions/new' => 'conditions#new'
  get 'conditions/design' => 'conditions#design'
  get 'conditions/women' => 'conditions#women'
  get 'conditions/pet' => 'conditions#pet'
  get 'conditions/intervention' => 'conditions#intervention'

  get 'room' => 'room#index'
  get 'room/abaranchiasagaya' => 'room#abaranchiasagaya'
  get 'room/whitehousesakuradai' => 'room#whitehousesakuradai'

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

  Rstokyo::Application.routes.draw do
    Rstokyo::Routing.index
    Rstokyo::Routing.inquiry
    Rstokyo::Routing.admin
    #Rstokyo::Routing.visual_migrate
  end

end
