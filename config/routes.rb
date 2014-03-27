Litterae02::Application.routes.draw do

  get "static_page/bemvindo", path: 'boasvindas'
  get "static_page/help", path: 'ajuda'
  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :users
  resources :categories
  resources :wordings do
    member { post :vote}
  end


  root to: 'wordings#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end