Rails.application.routes.draw do
  get 'home/top' => "home#top"

  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
