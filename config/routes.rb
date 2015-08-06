Rails.application.routes.draw do
  root 'tops#index'

  resources :concerts

  resources :songs do
    collection do
      get 'search'
    end
  end

end
