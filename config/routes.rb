Rails.application.routes.draw do
  resources :users do
     member do
       get 'url'
     end
   end
end
