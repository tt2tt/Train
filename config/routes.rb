Rails.application.routes.draw do
  root to: 'homes#home'
  get 'home', to: 'homes#home'
end
