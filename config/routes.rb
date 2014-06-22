Crm::Application.routes.draw do
  get 'help' => 'static_pages#help'

  authenticated :user do
    root 'static_pages#home'
  end

  devise_for :users
  devise_scope :user do
    get "/", to: "devise/sessions#new"
  end

  resources :users
end
