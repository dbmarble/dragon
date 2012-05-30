Dragon::Application.routes.draw do

  get "static_pages/effective_meeting"

  resources :prelaunch_emails
  resources :meeting_minutes_emails
  resources :agenda_emails



  match "/blog", to: 'root#blog'
  match "/agenda_templates", to: 'home#agenda_templates'
  match "/contact", to: 'home#contact'
  match "/about", to: 'home#about'
  match "/meeting_minutes_templates", to: 'home#meeting_minutes_templates'
  match "/articles", to: 'static_pages#effective_meeting'

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
