Rails.application.routes.draw do
  
  resources :projects
  resources :courses
  # get 'welcome/index'
  root 'welcome#index'
  # put "/students/:id", to: "students#update_student"
  get '/update_student/:id', to: 'students#update_student', as: "update_student"
  put '/updating_student_details/:id', to: 'students#updating_student_details', as: "updating_student_details"

  get 'moso', action: :index, controller: 'students'

  resources :students
  
  get '/greet', to: 'students#greet'
  get 'add',  to: 'students#add'
  # scope "api/v1" do 
  #   resources :users
  # end

  # namespace :api do
  #   namespace :v1 do
  #     resources :users do
  #       get "status_update", on: :collection
  #     end
  #   end
  #   namespace :v2 do
  #     resources :users
  #   end
  # end

  resources "users" do
    resources "orders" 
  end
  
  #With namespace
  # namespace :admin do
  #   resources :articles, :comments
  # end

  #with module and scope
  # scope module: 'admin' do
  #   resources :articles, :comments
  # end

  #Nested resources
  # resources :magazines do
  #   resources :ads
  # end

  #nested under nested resources

  
  # resources :publishers do
  #   resources :magazines do
  #     resources :photos
  #   end
  # end
  #shalow routing
  # resources :articles do
  #   resources :comments, only: [:index, :new, :create]
  # end

  #member routes
  # resources :photos do
  #   member do
  #     get 'preview'
  #     put 'preview/edit'
  #   end
  # end

  #collection routes
  resources :photos do
    collection do
      get 'search'
    end
  end

  

  
end
