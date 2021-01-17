Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'recipes', to: 'recipes#index'
  post 'recipes', to: 'recipes#create'
  get 'recipes/find', to: 'recipes#show'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipe'
  get 'recipes/:id', to: 'recipes#show', as: 'recipe'
  post 'recipes/delete/:id', to: 'recipes#delete'
end
