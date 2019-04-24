RailsBlog::Engine.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :show]
  end
end
