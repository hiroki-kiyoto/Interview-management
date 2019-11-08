Rails.application.routes.draw do
  root to: 'mentors#index'
  resources :mentors do 
    resources :clients do 
      resources :firstinterviews
      resources :regularinterviews
    end
  end
  resources :events
end
