Rails.application.routes.draw do
  resources :movies, only: [:index, :show]

  # Return summary of one movie
  get '/movies/:id/summary', to: 'movies#summary'

  # Return summaries of all movies
  get '/movies_summaries', to: 'movies#summaries'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
