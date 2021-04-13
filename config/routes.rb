Rails.application.routes.draw do
  root to: 'homes#home'

  # devise_for :users
  devise_for :users, skip: :all
  devise_scope :user do
    get 'login' => 'devise/sessions#new', as: :new_user_session
    post 'login' => 'devise/sessions#create', as: :user_session
    delete 'logout' => 'devise/sessions#destroy', as: :destroy_user_session
    get 'changepassword' => 'devise/registrations#edit', as: :users_edit
    put 'changepassword' => 'devise/registrations#update', as: :user_registration
  end

  get 'home', to: 'homes#home'
  get 'expenserequest', to: 'expenses#index'
  get 'attendance', to: 'attendances#index'
  get 'payslip', to: 'pays#index'
  get 'information', to: 'pays#information'
  get 'document', to: 'documents#index'
  # get 'new', to: 'documents#new'
  # post 'create', to: 'documents#create'

  resources :expenses, except: :index
  resources :attendances, except: :index
end
