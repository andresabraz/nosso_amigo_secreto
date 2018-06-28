require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  #Necessário apenas para ver o painel do sidekiq
  mount Sidekiq::Web => '/sidekiq'
end