Rails.application.routes.draw do
  root to: 'quizes#index'

  devise_scope :user do
    get "signup", to: "devise/registrations#new"
    get "login", to: "devise/sessions#new"
    end

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :posts do
    collection do
      get 'hobby'
      get 'study'
      get 'team'
    end
  end


end
