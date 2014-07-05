Videeotic::Application.routes.draw do

  root 'library#index'

  resources :library, only: [:index]

  get 'library/list_content'
end
