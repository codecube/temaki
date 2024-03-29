Temaki::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.
    
    match 'markitup/parsers/:action', :controller => "parsers", :via => :post
   
    
    root :to => "collections#init"
    
    #resources :collections
    
    match 'collections' => 'collections#index'
    match 'collections/new' => 'collections#new'
    match 'collections/create' => 'collections#create',:via => :post
    match 'collection/:collection/edit' => 'collections#edit', :via => :get
    match 'collection/:collection/update' => 'collections#update', :via => :post
    match 'collection/:collection/delete' => 'collections#destroy', :via => :get
    
    #### Documents
    
    match 'collection/:collection' => 'documents#index', :via => :get
    match 'collection/:collection/new' => 'documents#new', :via => :get
    match 'collection/:collection/create' => 'documents#create',:via => :post
    match 'collection/:collection/:id' => 'documents#show', :via => :get
    match 'collection/:collection/:id/edit' => 'documents#edit', :via => :get
    match 'collection/:collection/:id/update' => 'documents#update', :via => :post
    match 'collection/:collection/:id/delete' => 'documents#destroy', :via => :get
    
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

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
