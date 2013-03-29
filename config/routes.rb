MusiciansCommunity::Application.routes.draw do
  get "user/show"
  get "user/index"
  get "user/dashboard"

  devise_for :users

  # resources :users do
  #   resources :comments
  #   resources :instruments
  #   resources :user_videos
  #   resources :weekly_tunes 
  # end

  resources :user_videos do
    resources :comments
  end

  resources :weekly_tunes do
    resources :comments
  end

  devise_scope :user do
    root :to => 'static_pages#home'
  end
end
