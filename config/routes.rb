# frozen_string_literal: true

Rails.application.routes.draw do
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
end
