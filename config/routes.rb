Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :journal_entries, only: [:index, :create]
      resources :catagories, only: [:index, :create]
    end
  end
end
