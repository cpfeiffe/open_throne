Rails.application.routes.draw do
  # Routes for the Restroom resource:
  # CREATE
  get "/restrooms/new", :controller => "restrooms", :action => "new"
  post "/create_restroom", :controller => "restrooms", :action => "create"

  # READ
  get "/restrooms", :controller => "restrooms", :action => "index"
  get "/restrooms/:id", :controller => "restrooms", :action => "show"

  # UPDATE
  get "/restrooms/:id/edit", :controller => "restrooms", :action => "edit"
  post "/update_restroom/:id", :controller => "restrooms", :action => "update"

  # DELETE
  get "/delete_restroom/:id", :controller => "restrooms", :action => "destroy"
  #------------------------------

  # Routes for the Photo resource:
  # CREATE
  get "/photos/new", :controller => "photos", :action => "new"
  post "/create_photo", :controller => "photos", :action => "create"

  # READ
  get "/photos", :controller => "photos", :action => "index"
  get "/photos/:id", :controller => "photos", :action => "show"

  # UPDATE
  get "/photos/:id/edit", :controller => "photos", :action => "edit"
  post "/update_photo/:id", :controller => "photos", :action => "update"

  # DELETE
  get "/delete_photo/:id", :controller => "photos", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  devise_for :users

  root to: "restrooms#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
