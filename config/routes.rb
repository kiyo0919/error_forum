Rails.application.routes.draw do
  root to: 'homes#top'
  resources :errors, only:[:new, :show, :create, :edit, :update, :destroy]
  resources :technical_items, only:[:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
