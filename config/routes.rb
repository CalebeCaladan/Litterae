Litterae02::Application.routes.draw do

  get "static_page/bemvindo", path: 'boasvindas'
  get "static_page/help", path: 'ajuda'
  get "static_page/contato", path: 'contato'
  get "static_page/sobre", path: 'sobre'

  mount Bootsy::Engine => '/bootsy', as: 'bootsy'
  resources :users, path: 'usuarios'
  resources :categories, path: 'categorias'
  resources :wordings, path: 'resenhas' do
    member { post :vote}
  end


  root to: 'static_page#bemvindo'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

end