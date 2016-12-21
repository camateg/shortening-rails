Rails.application.routes.draw do
  get '/f/:code', to: 'links#follow', as: 'f'
  get '/qr/:code', to: 'links#qr', as: 'qr'

  resources :links
  root 'links#index'

end
