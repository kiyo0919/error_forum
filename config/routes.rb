Rails.application.routes.draw do
  devise_for :mentors, skip: [:passwords], controllers: {
    registrations: "mentors/registrations",
    sessions: 'mentors/sessions'
  }

  root to: 'homes#top'
  get "/about" => "homes#about", as: "about"
  get "/search_result" => "searches#search", as: "searches"
  resources :errors do
    resources :error_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :used_technologies, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end