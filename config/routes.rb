Rails.application.routes.draw do

  get '/reload_adjectives' => 'root#reload_adjectives', as: 'reload_adjectives'

  root 'root#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
