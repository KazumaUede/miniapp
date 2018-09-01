Rails.application.routes.draw do
  devise_for :users
  root  'comments#index'
  resources :comments




  # get   'comments'      => 'comments#index'
  # get   'comments/new'  => 'comments#new'
  # post  'comments'      => 'comments#create'
  # delete  'comments/:id'  => 'comments#destroy'
  # patch   'comments/:id'  => 'comments#update'
  # get   'comments/:id/edit'  => 'comments#edit'
  # get 'comments/:id' => 'comments#show'

end
