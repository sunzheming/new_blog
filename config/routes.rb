Rails.application.routes.draw do
  
  devise_for :users, :skip => :registration

  resources :posts do 
  	resources :comments
  end

  resources :categories
  resources :admin, only: [:index]
  
  root 'posts#index'

end
