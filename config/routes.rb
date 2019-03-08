# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  get 'coaches/index'
  get 'coaches/show'
  get 'players/index'
  get 'players/show'
  get 'teams/index'
  get 'teams/show'
  # restful routes, only need index and show
  resources :teams, only: %i[index show]
  resources :players, only: %i[index show]
  resources :coaches, only: %i[index show]

  #  a manual route for static pages, or a get request for the use of created permalinks.
  # get static/:permalinkPlaceHolder. The actual permalink       < 'permalink/:permalink'>
  # then route that to: the  pages contoller and references an action that does not yet exist called permalink. <to: 'pages#permalink'>
  get 'static/:permalink', to: 'pages#static', as: 'static' # *as: 'static' names the route. So accessable by static_path

  # load the index action of the team controller.
  root to: 'teams#index'
end
