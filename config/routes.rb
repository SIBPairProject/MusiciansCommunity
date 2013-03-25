MusiciansCommunity::Application.routes.draw do

  resources :users do
    resources :comments
    resources :instruments
    resources :user_videos
    resources :weekly_tunes 
  end

  resources :user_videos do
    resources :comments
  end

  resources :weekly_tunes do
    resources :comments
  end

end
