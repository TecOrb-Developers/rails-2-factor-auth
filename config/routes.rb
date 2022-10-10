Rails.application.routes.draw do
  root to: 'dashboards#index'
  devise_for :users, controllers: {
      sessions: 'sessions'
  }
  resource :two_factor_settings, except: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
