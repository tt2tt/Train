Rails.application.routes.draw do
  root to: 'homes#home'

  get 'home', to: 'homes#home'
  get 'expenserequest', to: 'expenses#index'
  get 'attendance', to: 'attendances#index'
  get 'payslip', to: 'pays#index'
  get 'document', to: 'documents#index'

  resources :expenses, except: :index
  resources :attendances, except: :index
end
