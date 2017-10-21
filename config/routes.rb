Rails.application.routes.draw do
  root 'twittas#index'
  resources :twittas do
   collection do
      post :confirm
   end
  end
end
