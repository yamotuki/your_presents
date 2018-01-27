Rails.application.routes.draw do
  root 'home#top'

  # auth/:provider へのroutingはomniauthがミドルウェア機能としてやっている？ よくわからんのでそのうちまた考えてみる。
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get 'home/top' => "home#top"
  get '/' => "home#top"

  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
