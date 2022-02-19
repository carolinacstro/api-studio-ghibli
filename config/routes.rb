Rails.application.routes.draw do
    root 'api/ghiblis#index'
    resources :ghiblis 
end
