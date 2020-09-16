Samurai::Core::Engine.routes.draw do
  #mount Samurai::Core::Engine => "/", as: 'samurai'
  devise_for :users, class_name: "Samurai::User", module: :devise
  namespace :admin do
    get '/' => 'admin#index'
    resources :users, only: :index
  end
  root to: "dashboard#index"
end
