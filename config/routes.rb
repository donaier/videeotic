Videeotic::Application.routes.draw do

  root 'library#index'

  resources :library, only: [:index]

  get 'library/list_content'
  get 'library/play_file'

  get 'playback/play'
  get 'playback/quit'
end
