Rails.application.routes.draw do
  get 'home/top' => "home#top"
  get '/' => "home#top"

  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
