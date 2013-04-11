MusiciansCommunity::Application.routes.draw do
  get "users/show" => 'users#show'
  get "users/index" => 'users#index'
  get "users/dashboard" => 'users#dashboard'


  devise_for :users do
    get '/users/sign_up(.:format)'   => 'devise/registrations#new'
    get '/users/sign_in(.:format)' => 'devise/sessions#new'
    get '/users/sign_in(.:format)' => 'devise/sessions#create'
    get '/users/sign_out(.:format)'   => 'devise/sessions#destroy'
    get '/users/password(.:format)'   => 'devise/passwords#create'
    get '/users/password/new(.:format)'   => 'devise/passwords#new'
    get '/users/password/edit(.:format)'   => 'devise/passwords#edit'
    get '/users/password(.:format)'   => 'devise/passwords#update'
    get '/users/cancel(.:format)'   => 'devise/registrations#cancel'
    get '/users(.:format)'   => 'devise/registrations#create' 
    get '/users/edit(.:format)'   => 'devise/registrations#edit'
    get '/users(.:format)'   => 'devise/registrations#update'
    get '/users(.:format)'   => 'devise/registrations#destroy'
  end


  resources :users
  resources :user_videos do
    resources :stats
  end

  resources :weekly_tunes
  resources :stats

  devise_scope :users do
    root :to => 'weekly_tunes#index'
  end
end
