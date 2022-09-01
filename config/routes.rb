Rails.application.routes.draw do
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
    root to: "devise/sessions#new"
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :groups do
    delete 'remove_member', on: :member
    post 'join', on: :member
    resources :posts, shallow: true do
      resources :comments, shallow: true
    end
  end

  # Defines the root path route ("/")
end
