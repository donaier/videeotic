Videeotic::Application.routes.draw do

  root 'library#index'

  resources :library, only: [:index]

  get 'library/list_content'
  get 'library/play_file'

  get 'playback/play'
  get 'playback/quit'
  get 'playback/vol_up'
  get 'playback/vol_down'
  get 'playback/prev_small'
  get 'playback/prev_big'
  get 'playback/next_small'
  get 'playback/next_big'
end
