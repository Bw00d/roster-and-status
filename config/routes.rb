Rails.application.routes.draw do
  resources :rostered_resources
  resources :rosters
  resources :teams
  resources :blurbs
  resources :primaries
  resources :alternates
  resources :trainees
  resources :shares
  root to: 'home#index'

  devise_for :users, controllers: {
    # Override the following Devise controllers with our custom versions
    registrations: 'users/registrations'
  }

  namespace :admin do
    resources :users
  end
  namespace :teams do
    resources :primaries
    resources :alternates
    resources :trainees
    resources :shares
  end
  resources :users, only: [:index, :show]

  # form_for is easier to use with a resourceful route
  resources :contact_forms, only: [:create]
  # A non-resourceful route was used to place the contact form at /contact
  get 'contact' => 'contact_forms#new', as: 'contact'

  get 'tags/:tag', to: 'blurbs#index', as: :tag
end
