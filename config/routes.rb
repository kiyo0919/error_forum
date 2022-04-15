Rails.application.routes.draw do
  root to: 'homes#top'
  get "/about" => "homes#about", as: "about"
  post "errors/comfirm" => "errors#confirm", as: "confirm"
  resources :errors
  resources :used_technologies, only: [:index, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
