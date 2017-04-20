Rails.application.routes.draw do
  resources :speakers, only: [:index]
  resources :audios, only: [:index, :show]

  post 'speak', as: "speak", to: "speak#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
