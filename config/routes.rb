Rails.application.routes.draw do

  resources :budgets
  resources :sales
  resources :payment_methods
  resources :vaccines
  resources :feeds
  resources :bird_categories
  resources :inventories
  resources :currencies
  resources :expenses
  resources :settings do
    collection do 
      get :index
    end
  end
  resources :company_equipments do
    collection do 
      get :allocation
    end
  end
  get 'welcome/index'

  resources :reports do
    collection do 
      get :index
      get :costings
    end
  end

  resources :inventory do
    collection do 
      get :index
    end
  end

  resources :expense_transactions do
    collection do 
      get :purchase
    end
  end

  
  resources :budgets do
    collection do
      get :add_items
      get :items
    end
  end
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "welcome#index"
end
