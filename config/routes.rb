Dragon::Application.routes.draw do

  resources :minutes_samples

  resources :prelaunches

  resources :agenda_samples

  match "/prelaunch_list", to: 'prelaunches#new'
  match "/about", to: 'home#about'
  match "/agenda_templates", to: 'home#agenda_templates'
  match "/contact", to: 'home#contact'
  match "/meeting_minutes_templates", to: 'home#meeting_minutes_templates'
  match "/pricing", to: 'home#pricing'
  match "/features", to: 'home#features'
  match "/articles/how_to_make_a_meeting_agenda", to: 'static_pages#agenda_how_to'
  match "/articles/How_to_run_an_effective_meeting", to: 'static_pages#effective_meeting'

  match "/articles", to: 'static_pages#articles'


  match "/jquery_ui", to: 'railsthemes#jquery_ui'


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



  match 'railsthemes/landing' => 'railsthemes#landing'
  match 'railsthemes/inner' => 'railsthemes#inner'
end
