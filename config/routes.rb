Dragon::Application.routes.draw do

  resources :minutes_samples

  resources :prelaunches

  resources :agenda_samples

  match "/prelaunch_list", to: 'prelaunches#new'
  match "/about", to: 'home#about'
  match "/contact", to: 'home#contact'
  match "/pricing", to: 'home#pricing'
  match "/tour", to: 'home#tour'

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users

  resources :users, :only => [:show, :index]  do
    resources :meetings
  end

  match "/articles", to: 'static_pages#articles'
  match "how_to_make_a_meeting_agenda", to: 'static_pages#agenda_how_to'
  match "what_is_a_meeting_agenda", to: 'static_pages#what_is_a_meeting_agenda'
  match "how_to_run_an_effective_meeting", to: 'static_pages#effective_meeting'
  match "why_take_meeting_minutes", to: 'static_pages#why_take_meeting_minutes'
  match "important_aspects_to_consider_for_meeting", to: 'static_pages#important_aspects_for_meeting'

end
