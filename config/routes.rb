Rails.application.routes.draw do
  resources :colleges
  resources :departments


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  #get 'sessions/homepage'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'homes#index'
  resources :courses do
    member do
      get :select
      get :quit
      get :open
      get :close
      get :editexam
    end
    collection do
      get :list
      get :showcollege
      get :selectCourseByCids
      get :showCourseInfo
      get :showNoticeInfo
      get :delCourseByCids
      get :downloadStuInfo
      get :down
      get :exam
      get :timetable
      get :showstudents
    end
  end
  # get 'courses/downloadStuInfo'
  # resources :grades, only: [:index, :update, :updategrades]
  resources :users

  resources :grades do
    collection do
      get :updategrades
      get :downstudent
      get :downteacher
      get :studentInfo
    end
  end



  get 'sessions/login' => 'sessions#new'
  post 'sessions/login' => 'sessions#create'
  delete 'sessions/logout' => 'sessions#destroy'


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