require 'sidekiq/web'

Rails.application.routes.draw do
  get 'members/create'

  get 'members/destroy'

  get 'members/update'

  get 'campaigns/show'

  get 'campaigns/index'

  get 'campaigns/create'

  get 'campaigns/update'

  get 'campaigns/destroy'

  get 'campaigns/raffle'

  get 'pages/home'

  devise_for :users, :controllers => { registrations: 'registrations' }
  #Necessário apenas para ver o painel do sidekiq
  mount Sidekiq::Web => '/sidekiq'
end