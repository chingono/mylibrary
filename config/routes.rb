Rails.application.routes.draw do
  devise_for :users

  # Root URL
  root 'articles#my_list'

  # Routes for the Article resource:
  # CREATE
  get "/articles/new", :controller => "articles", :action => "new"
  post "/create_article", :controller => "articles", :action => "create"

  # READ
  get "/articles", :controller => "articles", :action => "index"
  get "/articles/:id", :controller => "articles", :action => "show"

  # UPDATE
  get "/articles/:id/edit", :controller => "articles", :action => "edit"
  post "/update_article/:id", :controller => "articles", :action => "update"

  # DELETE
  get "/delete_article/:id", :controller => "articles", :action => "destroy"
  #------------------------------
  # Routes for the My List resource:
  # READ
  get "/my_list", :controller => "articles", :action => "my_list"

  #------------------------------
  # Routes for the My Likes resource:
  # READ
  get "/my_likes", :controller => "articles", :action => "my_likes"

  #------------------------------
  # Routes for the Like resource:
  # CREATE
  get "/likes/new", :controller => "likes", :action => "new"
  post "/create_like", :controller => "likes", :action => "create"

  # READ
  get "/likes", :controller => "likes", :action => "index"
  get "/likes/:id", :controller => "likes", :action => "show"

  # UPDATE
  get "/likes/:id/edit", :controller => "likes", :action => "edit"
  post "/update_like/:id", :controller => "likes", :action => "update"

  # DELETE
  get "/delete_like/:id", :controller => "likes", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get "/lists/new", :controller => "lists", :action => "new"
  post "/create_list", :controller => "lists", :action => "create"

  # READ
  get "/lists", :controller => "lists", :action => "index"
  get "/lists/:id", :controller => "lists", :action => "show"

  # UPDATE
  get "/lists/:id/edit", :controller => "lists", :action => "edit"
  post "/update_list/:id", :controller => "lists", :action => "update"

  # DELETE
  get "/delete_list/:id", :controller => "lists", :action => "destroy"
  #------------------------------

  # Routes for the Bibliography resource:
  # CREATE
  get "/bibliographies/new", :controller => "bibliographies", :action => "new"
  post "/create_bibliography", :controller => "bibliographies", :action => "create"

  # READ
  get "/bibliographies", :controller => "bibliographies", :action => "index"
  get "/bibliographies/:id", :controller => "bibliographies", :action => "show"

  # UPDATE
  get "/bibliographies/:id/edit", :controller => "bibliographies", :action => "edit"
  post "/update_bibliography/:id", :controller => "bibliographies", :action => "update"

  # DELETE
  get "/delete_bibliography/:id", :controller => "bibliographies", :action => "destroy"
  #------------------------------

  # Routes for the Author resource:
  # CREATE
  get "/authors/new", :controller => "authors", :action => "new"
  post "/create_author", :controller => "authors", :action => "create"

  # READ
  get "/authors", :controller => "authors", :action => "index"
  get "/authors/:id", :controller => "authors", :action => "show"

  # UPDATE
  get "/authors/:id/edit", :controller => "authors", :action => "edit"
  post "/update_author/:id", :controller => "authors", :action => "update"

  # DELETE
  get "/delete_author/:id", :controller => "authors", :action => "destroy"
  #------------------------------

  # Routes for the Tagging resource:
  # CREATE
  get "/taggings/new", :controller => "taggings", :action => "new"
  post "/create_tagging", :controller => "taggings", :action => "create"

  # READ
  get "/taggings", :controller => "taggings", :action => "index"
  get "/taggings/:id", :controller => "taggings", :action => "show"

  # UPDATE
  get "/taggings/:id/edit", :controller => "taggings", :action => "edit"
  post "/update_tagging/:id", :controller => "taggings", :action => "update"

  # DELETE
  get "/delete_tagging/:id", :controller => "taggings", :action => "destroy"
  #------------------------------

  # Routes for the Topic resource:
  # CREATE
  get "/topics/new", :controller => "topics", :action => "new"
  post "/create_topic", :controller => "topics", :action => "create"

  # READ
  get "/topics", :controller => "topics", :action => "index"
  get "/topics/:id", :controller => "topics", :action => "show"

  # UPDATE
  get "/topics/:id/edit", :controller => "topics", :action => "edit"
  post "/update_topic/:id", :controller => "topics", :action => "update"

  # DELETE
  get "/delete_topic/:id", :controller => "topics", :action => "destroy"
  #------------------------------


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


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
