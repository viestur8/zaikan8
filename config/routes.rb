Rails.application.routes.draw do

  #This code overwrites the sign_up_params and account_update_paramsmethods to accept the :name attribute

  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to:'quizes#index



#Changing the rout from /users/sign_in to /login

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end
  #Another beatiful shortcut to registrations

    devise_scope :user do
    get 'signup', to: 'devise/registrations#new'
  end
end
